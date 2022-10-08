import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:exif/exif.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geojson/geojson.dart';
import 'package:heic_to_jpg/heic_to_jpg.dart';
import 'package:intl/intl.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_view/photo_view.dart';
import 'package:image/image.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:whatado/graphql/mutations_graphql_api.dart';
import 'package:whatado/graphql/mutations_graphql_api.graphql.dart';
import 'package:whatado/models/event_user.dart';
import 'package:whatado/models/group.dart';
import 'package:whatado/models/interest.dart';
import 'package:whatado/providers/graphql/create_event_query.dart';
import 'package:whatado/providers/graphql/interest_provider.dart';
import 'package:whatado/services/service_provider.dart';
import 'package:whatado/utils/logger.dart';
import 'package:whatado/utils/time_tools.dart';

class AddEventState extends ChangeNotifier {
  PhotoViewController photoController;
  TextEditingController titleController;
  TextEditingController descriptionController;
  TextEditingController locationController;
  TextEditingController timeController;
  TextEditingController textModeController;
  TextEditingController addInterestController;
  DateTime _selectedDate;
  Gender _selectedGender;
  List<PublicUser> _selectedUsers;
  Group? _selectedGroup;
  Privacy _privacy;
  AssetEntity? selectedImage;
  File? selectedImageFile;
  Uint8List? selectedImageBytes;
  double _scale;
  double _offsetx;
  double _offsety;

  double _filterAgeStart;
  double _filterAgeEnd;
  bool _textMode;
  bool _postLoading;
  bool _failed;
  bool _succeeded;
  bool _screened;
  bool _chatDisabled;
  GeoJsonPoint? _coordinates;
  String? _displayLocation;

  List<Interest> popularInterests = [];
  List<Interest> customInterests = [];
  List<Interest> selectedInterests = [];

  void addInterest(Interest interest) {
    selectedInterests.add(interest);
    notifyListeners();
  }

  void removeInterest(Interest interest) {
    selectedInterests.remove(interest);
    notifyListeners();
  }

  void addCustomInterest(Interest interest) {
    customInterests.add(interest);
    notifyListeners();
  }

  void removeCustomInterest(Interest interest) {
    customInterests.remove(interest);
    notifyListeners();
  }

  AddEventState()
      : photoController = PhotoViewController(),
        titleController = TextEditingController(),
        descriptionController = TextEditingController(),
        locationController = TextEditingController(),
        _selectedDate = DateTime.now(),
        timeController = TextEditingController(),
        textModeController = TextEditingController(),
        addInterestController = TextEditingController(),
        _selectedUsers = [],
        _filterAgeEnd = 40,
        _filterAgeStart = 18,
        _textMode = false,
        _selectedGender = Gender.both,
        _privacy = Privacy.public,
        _postLoading = false,
        _succeeded = false,
        _failed = false,
        _screened = true,
        _chatDisabled = false,
        _scale = 0,
        _offsetx = 0,
        _offsety = 0 {
    titleController.addListener(() => notifyListeners());
    textModeController.addListener(() => notifyListeners());
    descriptionController.addListener(() => notifyListeners());
    locationController.addListener(() => notifyListeners());
    timeController.addListener(() => notifyListeners());
    init();
  }

  @override
  void dispose() {
    photoController.dispose();
    titleController.dispose();
    descriptionController.dispose();
    locationController.dispose();
    timeController.dispose();
    textModeController.dispose();
    addInterestController.dispose();
    super.dispose();
  }

  Future<void> init() async {
    final provider = InterestGqlProvider();
    final result = await provider.popular();
    popularInterests.addAll(result.data ?? []);
    notifyListeners();
  }

  DateTime get selectedDate => _selectedDate;
  set selectedDate(DateTime newDate) {
    _selectedDate = newDate;
    notifyListeners();
  }

  GeoJsonPoint? get coordinates => _coordinates;
  set coordinates(GeoJsonPoint? newPoint) {
    _coordinates = newPoint;
    notifyListeners();
  }

  String? get displayLocation => _displayLocation;
  set displayLocation(String? newLocation) {
    _displayLocation = newLocation;
    notifyListeners();
  }

  List<PublicUser> get selectedUsers => _selectedUsers;

  set selectedUsers(List<PublicUser> selectedUsers) {
    _selectedUsers = selectedUsers;
    notifyListeners();
  }

  Group? get selectedGroup => _selectedGroup;

  set selectedGroup(Group? selectedGroup) {
    _selectedGroup = selectedGroup;
    notifyListeners();
  }

  Privacy get privacy => _privacy;

  set privacy(Privacy privacy) {
    _privacy = privacy;
    notifyListeners();
  }

  bool get screened => _screened;
  bool get chatDisabled => _chatDisabled;

  set screened(bool screened) {
    _screened = screened;
    notifyListeners();
  }

  set chatDisabled(bool chatDisabled) {
    _chatDisabled = chatDisabled;
    notifyListeners();
  }

  bool get succeeded => _succeeded;

  set succeeded(bool succeeded) {
    _succeeded = succeeded;
    notifyListeners();
  }

  bool get failed => _failed;

  set failed(bool failed) {
    _failed = failed;
    notifyListeners();
  }

  bool get postLoading => _postLoading;

  set postLoading(bool loading) {
    _postLoading = loading;
    notifyListeners();
  }

  void setLoading() {
    _postLoading = true;
    notifyListeners();
  }

  Gender get selectedGender => _selectedGender;

  set selectedGender(Gender selectedGender) {
    _selectedGender = selectedGender;
    notifyListeners();
  }

  bool get textMode => _textMode;

  set textMode(bool textMode) {
    _textMode = textMode;
    notifyListeners();
  }

  double get filterAgeEnd => _filterAgeEnd;

  set filterAgeEnd(double filterAgeEnd) {
    _filterAgeEnd = filterAgeEnd;
    notifyListeners();
  }

  double get filterAgeStart => _filterAgeStart;

  set filterAgeStart(double filterAgeStart) {
    _filterAgeStart = filterAgeStart;
    notifyListeners();
  }

  Future<void> setImage(AssetEntity? _selectedImage) async {
    clearPhoto();
    selectedImage = _selectedImage;
    selectedImageFile = await _selectedImage?.file;
    selectedImageBytes = await selectedImageFile?.readAsBytes();
    notifyListeners();
  }

  void clearPhoto() {
    selectedImage = null;
    selectedImageFile = null;
    selectedImageBytes = null;
    notifyListeners();
  }

  void savePhotoInfo() {
    _scale = photoController.scale?.toDouble() ?? 0.0;
    _offsetx = photoController.position.dx;
    _offsety = photoController.position.dy;
  }

  void clear() {
    selectedImage = null;
    _succeeded = false;
    _failed = false;
    _postLoading = false;
    photoController.reset();
    titleController.clear();
    descriptionController.clear();
    locationController.clear();
    _selectedDate = DateTime.now();
    timeController.clear();
    textModeController.clear();
    addInterestController.clear();
    selectedInterests = [];
    selectedUsers = [];
    selectedGroup = null;
    customInterests = [];
    filterAgeEnd = 40;
    filterAgeStart = 18;
    selectedGender = Gender.both;
    privacy = Privacy.public;
  }

  Future<Uint8List> cropResizeImage(double deviceWidth) async {
    if (selectedImageBytes == null) return Uint8List.fromList([]);
    // convert if heic
    final isHeic = selectedImageFile!.path.toLowerCase().endsWith('heic');
    if (isHeic) {
      final jpgPath = await HeicToJpg.convert(selectedImageFile!.path);
      selectedImageFile = File(jpgPath!);
      selectedImageBytes = await selectedImageFile?.readAsBytes();
    }
    final width = selectedImage!.orientatedWidth;
    final height = selectedImage!.orientatedHeight;
    // resizing image too small doesn't update controller on revert to min size
    final scale = max(deviceWidth / min(width, height), _scale);
    final offsetx = _offsetx / scale;
    final offsety = _offsety / scale;
    // get positions of TL & BR corners
    final length = deviceWidth / scale;
    final top = ((height / 2.0) - (length / 2.0) - offsety).round();
    final right = ((width / 2.0) - (length / 2.0) + offsetx).round();
    final bottom = ((height / 2.0) - (length / 2.0) + offsety).round();
    final left = ((width / 2.0) - (length / 2.0) - offsetx).round();
    // crop image and encode it as png
    final decodedImage = await compute(decodeImage, List<int>.from(selectedImageBytes ?? []));
    if (decodedImage == null) return Uint8List.fromList([]);
    final exifData = await compute(readExifFromBytes, List<int>.from(selectedImageBytes!));
    final iosLandscape = Platform.isIOS &&
            (exifData.containsKey("Image Orientation") &&
                exifData["Image Orientation"].toString().contains("180"))
        ? -180
        : 0;
    final iosPortrait = Platform.isIOS &&
            (exifData.containsKey("Image Orientation") &&
                exifData["Image Orientation"].toString().contains("90"))
        ? 90
        : 0;
    final rotatedImage = await compute(
        (Map<String, dynamic> args) => copyRotate(args['face'], args['degrees']),
        {'face': decodedImage, 'degrees': iosPortrait + iosLandscape + selectedImage!.orientation});
    final face = copyCrop(
      rotatedImage,
      left,
      top,
      width - right - left,
      height - top - bottom,
    );
    final rerotatedImage = await compute(
        (Map<String, dynamic> args) => copyRotate(args['face'], args['degrees']),
        {'face': face, 'degrees': -iosPortrait + iosLandscape + -selectedImage!.orientation});
    final resizedFace = await compute(
        (Map<String, dynamic> args) => copyResize(args['image'],
            height: args['height'], width: args['width'], interpolation: args['interpolation']),
        {
          'image': rerotatedImage,
          'height': 1080,
          'width': 1080,
          'interpolation': Interpolation.cubic
        });
    return Uint8List.fromList(encodePng(resizedFace));
  }

  Future<void> postEvent(int userId, double width, VoidFutureCallBack getMyEvents,
      VoidFutureCallBack getMyForums) async {
    _postLoading = true;
    notifyListeners();
    try {
      String? downloadUrl;
      if (!textMode) {
        final bytes = await cropResizeImage(width);
        downloadUrl = await cloudStorageService.uploadImage(
          bytes,
          userId,
        );
      }

      if (!textMode && downloadUrl == null) {
        logger.e('error: no image');
        clear();
        _failed = true;
        _postLoading = false;
        notifyListeners();
        return;
      }

      // frankenstein the time from user input
      final dateFormat = DateFormat('EEE, M-d-y');
      final finalTime = formatMyTime(dateFormat.format(_selectedDate), timeController.text);
      // create interests
      final interestsProvider = InterestGqlProvider();
      final interests = await interestsProvider.create(interestsText: [
        ...(customInterests.map((i) => i.title).toList()),
      ]);
      final relatedInterestIds = List<int>.from(
          [...(interests.data ?? []), ...selectedInterests.map((v) => v.id).toList()]);

      // make query
      final query = CreateEventGqlQuery();
      await query.create(
          eventInput: EventInput(
        creatorId: userId,
        description: descriptionController.text,
        displayLocation: '',
        filterMinAge: filterAgeStart.toInt(),
        filterMaxAge: filterAgeEnd.toInt(),
        filterGender: selectedGender,
        filterLocation: '', // not yet used
        filterRadius: 5, // not yet used
        privacy: privacy,
        location: locationController.text,
        coordinates: coordinates!,
        relatedInterestsIds: relatedInterestIds,
        time: finalTime,
        pictureUrl: downloadUrl,
        title: textMode ? textModeController.text : titleController.text,
        wannagoIds: [],
        screened: screened,
        chatDisabled: chatDisabled,
        groupId: selectedGroup?.id,
        invitedIds: privacy == Privacy.group
            ? selectedGroup!.users.map((u) => u.id).toList()
            : selectedUsers.map((u) => u.id).toList(),
      ));
    } catch (e, stack) {
      logger.e(e.toString());
      logger.e(stack);
      clear();
      _failed = true;
      _postLoading = false;
      notifyListeners();
      return;
    }
    await getMyEvents();
    await getMyForums();
    clear();
    _succeeded = true;
    _postLoading = false;
    notifyListeners();
  }
}

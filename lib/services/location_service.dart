import 'package:location/location.dart';

class LocationService {
  Location location = new Location();
  LocationData? _locationData;
  LocationData? get locationData => _locationData;

  Future<LocationData?> getLocation() async {
    final hasService = await enableService();
    if (!hasService) return null;
    final hasPermission = await getPermission();
    if (!hasPermission) return null;
    _locationData = await location.getLocation();
    return _locationData;
  }

  Future<bool> getPermission() async {
    PermissionStatus _permissionGranted;
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted &&
          _permissionGranted != PermissionStatus.grantedLimited) {
        return false;
      }
    }
    return true;
  }

  Future<bool> enableService() async {
    bool _serviceEnabled;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return false;
      }
    }
    return true;
  }
}

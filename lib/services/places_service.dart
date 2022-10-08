import 'dart:convert';

import 'package:geojson/geojson.dart';
import 'package:http/http.dart';
import 'package:whatado/constants.dart';
import 'package:whatado/services/service_provider.dart';

class PlacesService {
  Future<List<Map<String, dynamic>>> findPlace(String partialText, GeoJsonPoint? location) async {
    Response response = await httpClientService.getAuthenticated(
        whatadoAutocompleteUrl +
            '?partial=$partialText&location=${location?.geoPoint.latitude},${location?.geoPoint.longitude}',
        localStorageService.accessToken ?? '');
    final data = jsonDecode(response.body);
    if (data['data'] == null) return [];
    return List<Map<String, dynamic>>.from(data['data']['predictions']);
  }

  Future<Map<String, dynamic>> placeDetails(String placeId) async {
    Response response = await httpClientService.getAuthenticated(
        whatadoPlaceDetailsUrl + '?placeId=$placeId', localStorageService.accessToken ?? '');
    final data = jsonDecode(response.body);
    if (data['data'] == null || data['data']['result'] == null) {
      return {};
    }
    // TODO also return the adr_address data so i can set the public address for the event
    return Map<String, dynamic>.from(data['data']['result']);
  }
}

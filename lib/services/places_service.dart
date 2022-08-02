import 'dart:convert';

import 'package:http/http.dart';
import 'package:whatado/services/service_provider.dart';

class PlacesService {
  Future<List<Map<String, dynamic>>> findPlace(String partialText) async {
    const String key = 'AIzaSyAZH4jgUQkfVyjLpqOPUuXpyigIktFVyQQ';
    Response response = await httpClientService.get(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$partialText&key=$key');
    final data = jsonDecode(response.body);
    final List<Map<String, dynamic>> results = data['predictions'];
    return results;
  }
}

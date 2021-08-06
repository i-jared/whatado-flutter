import 'dart:io';

import 'package:http/http.dart' as http;

class HttpClientService {
  late http.Client client;
  HttpClientService() {
    client = http.Client();
  }

  Future<http.Response> postAuthenticated(String url, String token) async =>
      await client.post(Uri.parse(url),
          headers: {HttpHeaders.authorizationHeader: token});
}

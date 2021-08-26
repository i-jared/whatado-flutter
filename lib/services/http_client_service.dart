import 'package:http/http.dart' as http;

class HttpClientService {
  late http.Client client;
  HttpClientService() {
    client = http.Client();
  }

  Future<http.Response> postAuthenticated(String url, String token) async {
    return await client
        .post(Uri.parse(url), headers: {'authorization': 'Bearer $token'});
  }
}

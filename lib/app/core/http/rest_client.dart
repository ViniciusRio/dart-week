import 'package:get/get_connect/connect.dart';

class RestClient extends GetConnect { 
  final _apiUrl = 'http://dartweek.academiadoflutter.com.br/';

  RestClient() {
    httpClient.baseUrl = _apiUrl;
  }
}
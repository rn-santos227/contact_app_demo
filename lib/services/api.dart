import 'dart:async';

import 'package:http/http.dart' as http;

const baseURL = "http://192.168.1.3:8000";

class API {
  static Future getPersons() {
    var _url = baseURL + "/persons";
    return http.get(_url);
  }
}
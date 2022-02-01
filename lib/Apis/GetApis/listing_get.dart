

import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:radium_tech/Model/listing_model.dart';

class ApiMale {
  Future <Welcome> getList() async{
    var client = http.Client();
    var welcomeMale;

    try {

      String url = 'http://192.168.18.65:8000/getSurveys/1';
      var response = await client.get(Uri.parse(url));
      if(response.statusCode == 200) {
        var jsonResponse = response.body;
        var jsonMap = json.decode(jsonResponse);
        welcomeMale = Welcome.fromJson(jsonMap);
      }

    } catch (Exception) {
      welcomeMale;
    }
    return welcomeMale;

  }

}
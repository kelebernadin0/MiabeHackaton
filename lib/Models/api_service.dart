import 'dart:convert';
import 'package:tech_quad/Models/Hotel.dart';

import 'Hotel_model.dart';
import 'package:http/http.dart' as http;

class APIservice{
  static var client = http.Client();


  static Future<List<hotel?>> getHotels() async{
    Map<String, String> requetesHeaders={
      'Content-Type':'application/json'
    };

    var url =Uri.https("miabehotel.welloffsarl.com",
    "/api/hotels"
    );
    var response= await client.get(url,headers: requetesHeaders);

   var data=jsonDecode(response.body);
     var Hotels=(data as List<dynamic>).map((raw) =>hotel.fromJson(raw)).toList();
     return Hotels;
    
  }
}
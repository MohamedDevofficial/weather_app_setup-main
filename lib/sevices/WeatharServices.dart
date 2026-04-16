import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weathar_model.dart';
class Weatharservices {
final Dio dio;
String baseUrl='https://api.weatherapi.com/v1';
String apiKay='61cefa05d41047f9ac834633263003';


  Weatharservices({required this.dio,});

Future<WeatharModel?> getCurrentWeather({required String City}) async {
   try{
 Response res=await dio.get('http://api.weatherapi.com/v1/forecast.json?key=dc8332755af345719c6112918263103&q=$City&days=1&aqi=no&alerts=no');
 
 WeatharModel weatharModel= WeatharModel.fromJson(res.data);
  return weatharModel;
} 
on DioException catch (e){
  final String errorMaseg=e.response?.data['error']['massage']??"oops there was an error, try later";
    throw Exception(errorMaseg);
}catch(e){
 log(e.toString());
}
   return null;
}

}
//$baseUrl/forecast.json?key=$apiKay&q=$q&days=1

class WeatharModel {
  final String image;
  final String cityName;
  final String date;
  final double? temp;
  final double? maxTemp;
  final double? mainTemp;
  final String weatherCondition;

  WeatharModel(
      {required this.image,
      required this.cityName,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.weatherCondition ,
      required this.mainTemp});
      factory WeatharModel.fromJson(json){
  return WeatharModel(
    cityName: json['location']['name'],
    
    date: DateTime.fromMillisecondsSinceEpoch(
            json['current']['last_updated_epoch'] * 1000)
        .toString(),

    mainTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
    temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
    weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
    image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
  );
}}

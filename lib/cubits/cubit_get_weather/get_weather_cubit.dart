import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_state.dart';
import 'package:weather_app/models/weathar_model.dart';
import 'package:weather_app/sevices/WeatharServices.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(IinitialState());
  WeatharModel? weatharModel;
  GetWeather({required String CityName}) async{
    try{
    
    weatharModel=
      (await Weatharservices(dio: Dio()).getCurrentWeather(City:CityName))!;  
    emit(WeatherLoadedState(weatharModel!));
  }catch(e){
     emit(WeatherFailureState());
  }
  
  }


}
 
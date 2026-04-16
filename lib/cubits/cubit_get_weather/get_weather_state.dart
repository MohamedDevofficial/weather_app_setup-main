
import 'package:weather_app/models/weathar_model.dart';

class WeatherState {}
class IinitialState extends WeatherState{}
class WeatherLoadedState extends WeatherState{
  final WeatharModel weatharModel;
  
  WeatherLoadedState(this.weatharModel);
}
class WeatherFailureState extends WeatherState{}
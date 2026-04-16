import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_cubit.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_state.dart';
import 'package:weather_app/views/Search_veiw.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)  { 
                 return  SearchVeiw();}),
              );
              // Navigate to search view
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body:BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context, state) {
          if(state is IinitialState){
            return NoWeatherBody();
          }else if(state is WeatherLoadedState){
            state.weatharModel;
            return WeatherInfoBody(weatharModel: state.weatharModel,);
          }else{
            return Text("opps there was error");
          }
          
          
          
        },
      )
    );
  }
}

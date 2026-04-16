

import 'package:flutter/material.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_cubit.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_state.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/widgets/getThemeColor.dart';

void main() async {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child:   Builder(
        builder: (context)=>MaterialApp(
          home:const HomeView(),
             debugShowCheckedModeBanner: false,
             theme: ThemeData(
             primarySwatch:Colors.blue,
            ),
            
           
          )),
      );
  }
}





import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_cubit.dart';

class SearchVeiw extends StatelessWidget {
   SearchVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
        
      ),
     
       body: Padding(
         padding:  EdgeInsets.symmetric(horizontal: 16.0),
         child: Center(
           child: TextField(
            onSubmitted: (value){
            GetWeatherCubit getWeatherCubit=  BlocProvider.of<GetWeatherCubit>(context);
             getWeatherCubit.GetWeather(CityName:value);
             Navigator.pop(context);
              

            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
              vertical: 32,
              ),
            labelText: "Search",
              hintText: 'Enter city name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: const Color.fromARGB(255, 81, 82, 83), width: 2.0),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Implement search functionality here
                },
              ),
            ),
           
                 
                ),
         ),
       ),
    );
  }
}

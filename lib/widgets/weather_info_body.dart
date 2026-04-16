import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/cubit_get_weather/get_weather_cubit.dart';
import 'package:weather_app/models/weathar_model.dart';

class WeatherInfoBody extends StatelessWidget {
   const WeatherInfoBody({Key? key, required this.weatharModel}) : super(key: key);
 final WeatharModel weatharModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(

              // weatharModel.cityName,
              BlocProvider.of<GetWeatherCubit>(context).weatharModel!.cityName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
           Text(
            weatharModel.date,
            style:const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                weatharModel.image,
              ),
               Text(
                weatharModel.temp.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
               Column(
                children: [
                  Row(
                    children: [
                       Text(
                        'Maxtemp:${weatharModel.maxTemp?.round()} ',
                        style:const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                       
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Mintemp:${weatharModel.mainTemp?.round()}',
                        style:const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    
                    
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
           Text(
            weatharModel.weatherCondition,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}


















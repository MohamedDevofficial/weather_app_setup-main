import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  condition = condition.toLowerCase();

  if (condition.contains('sunny') || condition.contains('clear')) {
    return Colors.amber;
  } 
  else if (condition.contains('cloud') || condition.contains('overcast')) {
    return Colors.blueGrey;
  } 
  else if (condition.contains('rain') || condition.contains('drizzle')) {
    return Colors.blue;
  } 
  else if (condition.contains('thunder')) {
    return Colors.deepPurple;
  } 
  else if (condition.contains('snow') || condition.contains('ice')) {
    return Colors.lightBlue;
  } 
  else if (condition.contains('fog') || condition.contains('mist')) {
    return Colors.grey;
  } 
  else {
    return Colors.teal;
  }
}
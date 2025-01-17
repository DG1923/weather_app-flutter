import 'package:flutter/material.dart';
const String apiKey = "b8eb1336d73f110e59e0fcc7285790ab";
const String openUrlWeather = "https://api.openweathermap.org/data/2.5/weather";
const String openUrlGetCoordinate = "http://api.openweathermap.org/geo/1.0/direct";
const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
const kInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: "Input your city",
  hintStyle: TextStyle(
    color: Colors.black54,
  ),
  icon: Icon(Icons.location_city),
  border:OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(100),),
    borderSide: BorderSide.none,
  ),
  prefixIcon: Icon(Icons.search),
  suffixIcon: Icon(Icons.clear),
);

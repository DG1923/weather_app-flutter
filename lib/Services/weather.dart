import 'dart:async';
import 'package:weather_app_2/Services/location.dart';
import 'package:weather_app_2/Services/networking.dart';
import 'package:weather_app_2/Utillities/constants.dart';
class WeatherModel {
  Future<dynamic> getDataWeather() async {
    Location location = new Location();
    await location.getLocation();
    NetworkingHelper networkingHelper = NetworkingHelper();
    Map<String, dynamic> data = await networkingHelper.getData("$openUrlWeather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric");
    return data;
  }
  Future<dynamic> getDataWeatherByCityName(String cityName) async{
    NetworkingHelper networkingHelper = new NetworkingHelper();
    var location =await networkingHelper.getData("${openUrlGetCoordinate}?q=${cityName}&appid=${apiKey}");
    double longtitude = location[0]["lon"];
    double latitude = location[0]["lat"];
    print("$longtitude and $latitude");
    dynamic data = await networkingHelper.getData("$openUrlWeather?lat=${latitude}&lon=${longtitude}&appid=$apiKey&units=metric");
    return data;

  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}

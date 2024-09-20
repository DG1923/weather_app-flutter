import 'package:geolocator/geolocator.dart';
class Location{
  late double _latitude;
  late double _longitude;
  double get latitude => _latitude;
  set latitude(double value) {
    _latitude = value;
  }
  Location(){}
  Future<void> getLocation () async{
    try{
      if(Geolocator.isLocationServiceEnabled()==false){
        print("Services get location is disable !");
      }
      LocationPermission permission;
      permission = await Geolocator.checkPermission();

      if(permission == LocationPermission.denied || permission == LocationPermission.deniedForever){
        permission = await Geolocator.requestPermission();
        if(permission == LocationPermission.deniedForever || permission == LocationPermission.deniedForever){
          print("You have not allow the system to access your location");
        }
      }

      if(permission == LocationPermission.always || permission == LocationPermission.whileInUse){
        Position position = await Geolocator.getCurrentPosition(locationSettings: LocationSettings(accuracy: LocationAccuracy.high));
        latitude = position.latitude;
        longitude = position.longitude;
      }else{
        throw("Permission is not sufficient to determine location !");
      }
    }
        catch (e){
      print(e);
        }
  }

  double get longitude => _longitude;

  set longitude(double value) {
    _longitude = value;
  }
}
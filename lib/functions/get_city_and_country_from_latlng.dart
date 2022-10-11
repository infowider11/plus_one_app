

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';



Future<Placemark> getCityAndCountryFromLatLong(Position position)async{

  var addresses = await placemarkFromCoordinates(position.latitude, position.longitude);
  print('the address is kkk ${addresses.first}');
  return addresses.first;
}

class CityAndCountryFromLatLongCustomResponse{
  String country;
  String city;
  String state;
  double latitude;
  double longitude;
  String formattedAddress;
  String route;
  String zipcode;
  CityAndCountryFromLatLongCustomResponse({
    required  this.country,
    required this.city,
    required  this.state,
    required  this.latitude,
    required  this.longitude,
    required  this.formattedAddress,
    required this.route,
    required this.zipcode
  });
}

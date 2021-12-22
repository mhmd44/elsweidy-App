import 'package:geolocator/geolocator.dart';

class LocationHelper {
  // static to call func without call object from class and get this function
  // static mean fun related with class not any object from it
  static Future<Position> getCurrentLocation() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      await Geolocator.requestPermission();
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}

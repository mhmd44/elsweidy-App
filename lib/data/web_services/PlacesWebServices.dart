import 'package:dio/dio.dart';
import 'package:shifaa_app/constnats/strings.dart';

class PlacesWebServices {
  Dio dio;

  PlacesWebServices() {
    BaseOptions options = BaseOptions(
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future <List<dynamic>> fetchsuggestation(String place,
      String sessionToken) async {
    try {
      Response response = await dio.get("");

      return response.data;
    }
    catch (error) {
      print(error.toString());
      return [];
    }
  }

  class Rewrite extends _RequestConfig{
  Rewrite({
  String address;
  String name;
  String key;
  int id;
  String types
  }): super (

  );
  }
}
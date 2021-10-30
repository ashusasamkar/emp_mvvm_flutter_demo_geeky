import 'package:dio/dio.dart';

class Api {
  var dio = Dio();
  static const String BASE_URL = 'https://dev.geekyworks.com';
  Future<dynamic> callGetApi(String url) async {
    return dio.get(BASE_URL + url).then(
      (response) {
        int? code = response.statusCode;
        print('Response getApi ${BASE_URL + url} : $code...');
        if (code! < 200 || code > 400) {
          throw Exception('Error while getting data');
        }
        return response.data;
      },
    );
  }
}

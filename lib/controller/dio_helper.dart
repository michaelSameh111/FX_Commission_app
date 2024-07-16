import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://innovationscope.com/demos/fx/public/',
        receiveDataWhenStatusError: true,
        
      ),
    );
  }

  static Future<Response?> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    int? id,
  }) async {
    dio?.options.headers = {
      'auth-token' : token,
      'id' : id
    };
    return await dio?.get(
        url, queryParameters: query);
  }


  static Future<Response> postData ({
    required String url,
    Map<String, dynamic>? query,
    var data,
    String? token,
  }) async {
    dio?.options.headers = {
      'access_token' : token
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data
    );
  }
}


import 'package:dio/dio.dart';



class ApiNews {
  final dio = Dio();

  Future<dynamic> getHttp() async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything?q=%D8%A7%D9%84%D8%AA%D9%82%D9%86%D9%8A%D8%A9&from=2026-08-22&sortBy=publishedAt&apiKey=$apiKey',
    );

    return response.data;
  }
}
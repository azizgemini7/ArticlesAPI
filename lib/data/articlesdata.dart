import 'package:dio/dio.dart';
import 'package:articlesapi/constant/constants.dart';

class NewsService {
  final Dio _dio = Dio(
      BaseOptions(baseUrl: ApiUrls.baseUrl, responseType: ResponseType.json));

  fetchNews() async {
    var response = await _dio.get(
        '/mostpopular/v2/mostviewed/all-sections/7.json?api-key=IR9JqHN4SKqaaGqvCBPN7W38ALjKHCr2');

    return response.data;
  }

  fetchNewsBySearching(String title) async {
    var response = await _dio.get('/search/v2/articlesearch.json?q=' +
        title +
        '&api-key=IR9JqHN4SKqaaGqvCBPN7W38ALjKHCr2');

    return response.data;
  }
}

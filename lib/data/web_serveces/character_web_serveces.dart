import 'package:characters_app/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersWebServeces
{
  late Dio dio;
  CharactersWebServeces()
  {
    BaseOptions options =BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      receiveTimeout: 60*1000,
      connectTimeout: 60*1000,
    );

    dio = Dio(options);
  }


Future <List<dynamic>> getAllCharacters ()async
{
  try {
    Response response = await dio.get('characters');
    print(response.data.toString());
    return response.data;
  } catch (e) {
    print(e.toString());
    return [];
  }
  
}


}
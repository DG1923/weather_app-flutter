import 'dart:convert';
import 'package:http/http.dart' as http;
class NetworkingHelper{
  NetworkingHelper(){
  }
  Future<dynamic> getData(String url) async{
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    print(uri);
    print(response.body);
    if(response.statusCode == 200){
        return jsonDecode(response.body);
    }else{
      throw Exception('Failed to load weather data: ${response.statusCode}');
    }

  }

}
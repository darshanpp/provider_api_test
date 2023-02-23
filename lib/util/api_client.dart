import 'dart:convert';

import 'package:http/http.dart' as http;

///
/// @author Darshan Prajapati 
/// @version 1.0
/// @since 23/02/23 7:24 pm
/// 

class ApiClient {

  static Future<dynamic> get({url,body,}) async{
    var response = await http.get(Uri.parse(url ?? 'https://swapi.dev/api/vehicles/'));
    return jsonDecode(response.body);
}

}
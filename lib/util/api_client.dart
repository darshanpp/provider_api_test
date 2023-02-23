import 'dart:convert';

import 'package:http/http.dart' as http;

///
/// @author Darshan Prajapati 
/// @version 1.0
/// @since 23/02/23 7:24 pm
/// 



/// In this file we can add different different request methods
/// Here we can set baseurl for app and also maintain end points in different files
class ApiClient {

  static Future<dynamic> get({url,body,}) async{
    var response = await http.get(Uri.parse(url ?? 'https://swapi.dev/api/vehicles/'));
    return jsonDecode(response.body);
}

}
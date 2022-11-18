import 'dart:convert';

import 'package:get/get.dart';
import 'package:twin_perspectivee/model/response.dart';
import 'package:http/http.dart' as http;

class QueryController extends GetxController {

RxString query = ''.obs;

void updateQuery(String newQuery) {
  query.value = newQuery;
}

void clearQuery() {
  query.value = '';
}

Future<ApiResponse> getResponse() async {

// call api in flutter
var result = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// convert json to object
var response = ApiResponse.fromJson(jsonDecode(result.body));
return response;


}


  
}




import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pratike_api/model_2/data/data_model.dart';

List<DataModel> listData = [];

Future<List<DataModel>> getDataApi () async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    try {
      var data = jsonDecode(response.body) as List;
      listData = data.map((e) => DataModel.fromJson(e)).toList();
    } catch (e) {
      print('Erreur lors du decodage de donnée ${e.toString()}');
    }
  }else{
    print("erreur ${response.statusCode}");
  }
  return listData;

}
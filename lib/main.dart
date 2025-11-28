import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pratike_api/model/done.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: App());
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  final String apiKey = 'c4ca1f7d109f4a269e9633434e78b663';

  Future<List<Done>> fetchApi () async {
    final response = await http.get(Uri.parse('https://api.spoonacular.com/recipes/complexSearch?apiKey=$apiKey'));
    if (response.statusCode == 200) {
      List<dynamic> dataList = json.decode(response.body)['results'];
      return dataList.map((json) => Done.fromJson(json)).toList();
    }else{
      throw Exception('Failled to load recipe');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de comida🍔😋'),
      ),
      body: FutureBuilder(
        future: fetchApi(), 
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if(snapshot.hasError){
            return Center(
              child: Text('Error ${snapshot.error}'),
            );
          }else if(!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('Document not found'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index){
                final data = snapshot.data![index];
                return ListTile(
                  title: Text(data.title),
                  leading: Image.network(data.image),
                );
              }
            );
          }
        }
      ),
    );
  }
}

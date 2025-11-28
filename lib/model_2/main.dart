import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratike_api/model_2/data/data_model.dart';
import 'package:pratike_api/model_2/service/api_service.dart';

void main() {
  runApp(MayApp());
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataApi(),
    );
  }
}

class DataApi extends StatefulWidget {
  const DataApi({super.key});

  @override
  State<DataApi> createState() => _DataApiState();
}

class _DataApiState extends State<DataApi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ModelData'),
      ),
      body: FutureBuilder(
        future: getDataApi(), 
        builder: (context, AsyncSnapshot<List<DataModel>> dataSnapshot){
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if(dataSnapshot.hasError){
            return Center(
              child: Text('Error ${dataSnapshot.hasError}'),
            );
          }else if(!dataSnapshot.hasData || dataSnapshot.data!.isEmpty){
            return Center(
              child: Text('Document not valide'),
            );
          }else{
            return ListView.builder(
              itemCount: dataSnapshot.data!.length,
              itemBuilder: (context, index){
                final data = dataSnapshot.data![index];
                return ListTile(
                  title: Text( data.title),
                  subtitle: Text(data.body),
                );
              }
            );
          }
        }
      ),
    );
  }
}
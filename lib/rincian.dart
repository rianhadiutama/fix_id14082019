import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Rincian extends StatefulWidget {
  @override
  _RincianState createState() => _RincianState();
}

class _RincianState extends State<Rincian> {
  Map data;
  List list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rincian"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: list == null ? 0 : list.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              child: Row(
                children: <Widget>[
                  Text("${list[index]["nama"]}")
                ],
              ),
            );
          }),
    );
  }

  Future getData() async{
    var url = 'http://103.44.27.198/get.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    setState(() {
      list = data["data"];
    });
  }

  @override
  void initState() {
    getData();
  }




}

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../src/image_model/image.dart';
import 'dart:convert';
import '../src/image_model/list.dart';

class App extends StatefulWidget{
  @override
  createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App>{
  int counter = 0;
  List<imageModel> img = [];
  @override

  void fetchImage() async {
    counter ++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var ImageModel = imageModel.build(json.decode(response.body));
    setState(() {
      img.add(ImageModel);
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: list(img),
        appBar: AppBar(
          title: Text('let\'s have some images'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: fetchImage,
          child: Icon(Icons.add_a_photo)
        ),
        ),
      );
  }
}
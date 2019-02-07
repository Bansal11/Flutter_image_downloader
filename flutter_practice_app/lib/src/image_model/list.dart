import 'package:flutter/material.dart';
import '../../src/image_model/image.dart';

class list extends StatelessWidget{

  final List<imageModel> img;

  list(this.img);

  Widget build(context){
    return ListView.builder(
      itemCount: img.length,
      itemBuilder: (context, int i){
        return buildImage(img[i]);
    },

    );
  }
  Widget buildImage(imageModel image){
//returning the container widget
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
        ),
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
//      creating layout
        child: Column(
          children: <Widget>[
            Padding(
              child: Image.network(image.url),
              padding: EdgeInsets.only(bottom: 10.0),
            ),

            Text(image.title),
          ],
        )
    );
  }
}
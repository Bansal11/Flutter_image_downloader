import 'package:flutter/material.dart';
import 'dart:convert';

class imageModel{
  int id;
  String url;
  String title;

  imageModel(this.id, this.url, this.title);

  imageModel.build(parsedJSON)
  {
    id = parsedJSON['id'];
    url = parsedJSON['url'];
    title = parsedJSON['title'];
  }

}
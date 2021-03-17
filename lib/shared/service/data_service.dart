import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:master_detail/shared/model/fruit.dart';

class DataService{

  static Future<List<Fruit>> fruits(BuildContext context) async{
    var jsonText = await DefaultAssetBundle.of(context)
        .loadString('assets/json/fruits.json');
    Map<String,dynamic> map = jsonDecode(jsonText);
    var list = (map['fruits'] as List);
    return list.map<Fruit>((e) => Fruit.fromJson(e)).toList() ?? [];
  }

  static Future<List<Fruit>> fruitsFromGenerator(BuildContext context) async{
    var jsonText = await DefaultAssetBundle.of(context)
        .loadString('assets/json/fruits.json');
    Map<String,dynamic> map = jsonDecode(jsonText);
    var list = (map['fruits'] as List);
    return list.map<Fruit>((e) => Fruit.fromJson(e)).toList() ?? [];
  }

}
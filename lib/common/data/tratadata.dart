// ignore_for_file: avoid_print, unused_element, prefer_interpolation_to_compose_strings, unnecessary_null_comparison

import 'package:flutter/cupertino.dart';

import 'modeldata.dart';
import "package:flutter/services.dart" show rootBundle;

class ModelMenu with ChangeNotifier {
  List<Universidades> info = [];
  ModelMenu() {
    loadData();
  }
  void loadData() {
    rootBundle.loadString("assets/data.json")
    .then((value) => {
      if(value==null) {
        print("vacio")
      } else {
        value
      }
    });
  }
  
  final resp = loadData;
  final infoResponse = universidadesFromJson
}
final informacion = ModelMenu();



// ignore_for_file: avoid_print, unused_element, prefer_interpolation_to_compose_strings, unnecessary_null_comparison, constant_identifier_names

import 'modeldata.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

const _URL_TYBA =
    "https://tyba-assets.s3.amazonaws.com/FE-Engineer-test/universities.json";

class ModelMenu with ChangeNotifier {
  List<Universidades> info = [];
  ModelMenu() {
    getInfo();
  }

  getInfo() async {
    // ignore: prefer_const_declarations
    final resp = await http.get(Uri.parse(_URL_TYBA));
    final infoResponse = universidadesFromJson(resp.body);
    info.addAll(infoResponse);
        notifyListeners();
    return infoResponse;
  }
}

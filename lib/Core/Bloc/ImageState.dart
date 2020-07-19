import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testapp/Core/Model/ImageModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ImageState with ChangeNotifier {
  int _count= 0;
  List<ImageModel> _images = [];
  static const URL = 'https://jsonplaceholder.typicode.com/photos';


  int get count => _count;
  List<ImageModel> get images => _images;

  void fetchImage() async {
    debugPrint('envoie de la requete');
    _count++;
    debugPrint(URL+'/$count');
    var jsondata = await http.get(URL+'/$count');

    if(jsondata.statusCode == 200) {
      var data = await json.decode(jsondata.body);
      var image = ImageModel.fromjson(data);
      images.add(image);
      debugPrint(images.toString());
        _images = images;
    }else{
      debugPrint("Erreur dans la requete : status code ${jsondata.statusCode}");
    }
    debugPrint("$count");
    notifyListeners();
  }

  removeImage() {
    Random random = Random();
    var index = random.nextInt(images.length);
    var index1 = images.length - 1;
    images.removeAt(index);
      _count = images.length;
      _images = images;
      debugPrint("${images.length}");

    notifyListeners();
  }

  decrement() {
      _count--;
    debugPrint("$count");
      notifyListeners();
  }
}
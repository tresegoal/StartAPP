import 'package:flutter/material.dart';
import 'package:testapp/Core/Bloc/ImageState.dart';
import 'package:testapp/UI/SingleImage.dart';


class NavigateState with ChangeNotifier {

  int _currentIndex = 0;
  String _title = "App test";

  String get title => _title;


  set title(String value) {
    _title = value;
    notifyListeners();
  }

  int get currentIndex => _currentIndex;

  void navigateItem(int index) {
    debugPrint("$index");
      if(index == 0) title = "Todos";
      if(index == 1) title = "Contacts";
      if(index == 2) title = "Calls";
      _currentIndex = index;

      notifyListeners();
  }

  Widget showContent(int index,ImageState imageState) {
    if(index == 0) {
      return  Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: imageState.images.length,
              itemBuilder: (context,index) {
                return SingleImage(
                  title: imageState.images[index].title,
                  id: imageState.images[index].id,
                  url: imageState.images[index].url,
                );
              })
      );
    } else if(index==1) {
      return Container(
        color: Colors.white,
        child: Center(
          child: Text("$title",style: TextStyle(color: Colors.black,fontSize: 20.0),),
        ),
      );
    }
    else {
      return Container(
        color: Colors.white,
        child: Center(
          child: Text("$title",style: TextStyle(color: Colors.black,fontSize: 20.0),),
        ),
      );
    }
  }

}
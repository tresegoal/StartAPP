import 'package:flutter/material.dart';

class SingleImage extends StatelessWidget {
  final int id;
  final String url;
  final String title;

  SingleImage({this.title,this.url,this.id});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>print('chiwawa'),
      title: Text('$title',style: TextStyle(color: Colors.black,fontSize: 20.0),),
      subtitle: Text('$id',style: TextStyle(color: Colors.black,fontSize: 20.0)),
      leading: Image.network(
          url,
        fit: BoxFit.cover
      ),
    );
  }
}

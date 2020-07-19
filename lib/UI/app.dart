
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/Core/Bloc/ImageState.dart';
import 'package:testapp/Core/Bloc/NavigateState.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    
    NavigateState navigateState = Provider.of<NavigateState>(context);
    ImageState imageState = Provider.of<ImageState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${navigateState.title}'),
        backgroundColor: Colors.indigo,
        elevation: 0.4,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings,color: Colors.white30),
            onPressed: ()=>null,
            color: Colors.red,
            tooltip: 'Settings',
          )
        ],
      ),
      resizeToAvoidBottomPadding: false,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: imageState.fetchImage,
              backgroundColor: Colors.white,
              tooltip: 'Add',
              child: Icon(Icons.add),
              heroTag: Text("add image"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: imageState.removeImage,
              backgroundColor: Colors.white,
              tooltip: 'remove',
              child: Icon(Icons.remove),
              heroTag: Text("remove image"),
            ),
          ),
        ],
      ),
      body: navigateState.showContent(navigateState.currentIndex,imageState),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text('Todos'),icon: Icon(Icons.access_time)),
          BottomNavigationBarItem(title: Text('Contacts'),icon: Icon(Icons.access_time)),
          BottomNavigationBarItem(title: Text('Calls'),icon: Icon(Icons.access_time)),
        ],
        onTap: navigateState.navigateItem,
        currentIndex: navigateState.currentIndex,

      ),
    );
  }
}

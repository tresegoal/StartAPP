import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/Core/Bloc/ImageState.dart';
import 'package:testapp/Core/Bloc/NavigateState.dart';
import 'package:testapp/UI/Login_statefull.dart';

void main() {
  runApp(MultiProvider(
    providers: [
        ChangeNotifierProvider(create: (_) => NavigateState(),
        ),
        ChangeNotifierProvider(create: (_) => ImageState(),)
    ],
    child: MaterialApp(
      title: 'App test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: LoginStatefull(),
    )
  )
  );
}


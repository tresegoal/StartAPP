import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/UI/app.dart';


class LoginStatefull extends StatefulWidget {
  @override
  _LoginStatefullState createState() => _LoginStatefullState();
}

class _LoginStatefullState extends State<LoginStatefull> {
  final formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueGrey,
        elevation: 0.4,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings,color: Colors.white30),
            onPressed: ()=>null,
            color: Colors.red,
           // tooltip: 'Settings',
          )
        ],
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.black12,
        padding: const EdgeInsets.all(20.0),
        child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                emailField(),
                passwordField(),
                submitButon()
              ],
            )
        ),
      ),
    );
  }


  Widget emailField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'name@yourdomain.com',
          icon: Icon(Icons.email,color: Colors.white70),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          )
        ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: '123abc#@/',
            icon: Icon(Icons.lock),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          )
        ),
      ),
    );
  }

  Widget submitButon() {
    return  RaisedButton(
      onPressed:() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> MyApp())
          );
        },
      color: Colors.blueGrey,
      elevation: 4.0,
      child: Text('Submit',style: TextStyle(fontSize: 20.0),),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      animationDuration: Duration(seconds: 2),
      colorBrightness: Brightness.dark,
      textTheme: ButtonTextTheme.accent,
    );
  }

  formValidate() {

  }
}

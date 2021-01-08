import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_screen.dart';

void main() {
  runApp(MaterialApp(

    //home:LoginScreenState(),
    
    initialRoute: '/',
    routes: {
      '/':(context) => LoginScreenState(),
      //'/home':(context) => LoginScreenState(), // HOme
      //'/detail':(context) => LoginScreenState(),
    },
    

  ));
}

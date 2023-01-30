import 'package:flutter/material.dart';
import 'package:login/log_in%20screen.dart';

// import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}

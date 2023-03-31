import'package:flutter/material.dart';
import 'package:maxiii/View/splashScreen.dart';



void main(){

  runApp(
      MyApp()
  );

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' COVID-19 TRACKER',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

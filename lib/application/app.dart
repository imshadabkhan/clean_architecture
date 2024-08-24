import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
//thiscode is for data passage
  MyApp._internal();//  // private named constructor
  static  final MyApp instance = MyApp._internal(); //single instance -- singleton
  factory MyApp() => instance; //factory for class instance
  int appState=0;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesManager.splashRoute,
      onGenerateRoute: RoutesGenerator.getRoute,
      theme: applicationThemeData(),
    );
  }
}

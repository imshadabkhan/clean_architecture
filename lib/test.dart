
import 'package:clean_architecture/application/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});


  void appState(){
    MyApp.instance.appState=10;
  }
  void getAppState(){print( MyApp.instance.appState );}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [

    ],),);
  }
}

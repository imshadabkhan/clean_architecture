import 'package:flutter/material.dart';
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,body: Center(child: Text("Onboarding View"),),);
  }
}

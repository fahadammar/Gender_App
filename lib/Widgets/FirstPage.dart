import 'package:flutter/material.dart';

//? External Module
import 'package:Gender_App/Screens/genderApp.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        GenderApp(),
      ],
    );
  }
}

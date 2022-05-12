import 'package:flutter/material.dart';

class HobbyScreen extends StatelessWidget {
  const HobbyScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        Image.asset("assets/images/R.png", width: 150, height: 150),
        Text("Empty")
      ]
    );
  }
}
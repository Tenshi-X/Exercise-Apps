import 'package:flutter/material.dart';

class contactScreen extends StatelessWidget {
  const contactScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
           Row(
            children: [
              Image.asset("assets/images/GitHub_logo.png",width: 50, height: 50),
              TextButton(onPressed: (){}, child: Text("Tenshi-X", style: TextStyle(fontSize: 20, fontFamily: "Poppins"))),
            ]
         ),
          SizedBox(height: 16),
         Row(
            children: [
              Image.asset("assets/images/discord-logo-01.png", width: 50, height: 50),
              TextButton(onPressed: (){}, child: Text("TenshiX#3138", style: TextStyle(fontSize: 20, fontFamily: "Poppins"))),
            ]
            )
        ]
      )
    );
  }
}
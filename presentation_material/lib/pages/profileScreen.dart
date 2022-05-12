import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(20),
     child: Column(
       children: [
         PhysicalModel(color: Colors.black, shape: BoxShape.rectangle, elevation: 10,
         child: Image.asset("assets/images/Seva Giantama F(28).jpg", width: 150, height: 150),
         ), 
            SizedBox(height: 20),
            SizedBox(height: 20),
            Text("SEVA GIANTAMA FAREL",
            style: TextStyle(
            fontSize: 20, 
            fontFamily: "Poppins", 
            color: Color.fromARGB(255, 34, 30, 241),
            backgroundColor: Color.fromARGB(255, 22, 215, 215),
            )
            ),
            SizedBox(height: 20),
            Text("123210061", style: TextStyle(
              fontSize: 20, 
              fontFamily: "Poppins",
              color: Color.fromARGB(255, 34, 30, 241),
              backgroundColor: Color.fromARGB(255, 22, 215, 215)
              )
              ),
              SizedBox(height: 20),
            Text("INFORMATIKA", style: TextStyle(
              fontSize: 20, 
              fontFamily: "Poppins",
              color: Color.fromARGB(255, 34, 30, 241),
              backgroundColor: Color.fromARGB(255, 22, 215, 215)
              )
              ),
           ]
         )
     );
  }
}
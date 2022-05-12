import 'package:flutter/material.dart';
import 'package:presentation_material/pages/mainScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [_loginText(), _usernameField(), _passwordField(), _loginButton(context)],
        ),
      ),
    );
  }
    Widget _loginText() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Text(
          'LOGIN',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )
        );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _usernameController,
        decoration: InputDecoration(
          labelText: 'Username',
          labelStyle: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          icon: Icon(Icons.person),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
              fontSize: 15, fontFamily: 'Roboto', color: Colors.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          icon: Icon(Icons.lock),
          contentPadding: EdgeInsets.all(10),
        ),
        obscureText: true,
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          String text = "";
          if(_usernameController.text == "sevagiantama" &&
          _passwordController.text == "itc123" )
          {
          text = "Login Success";
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainScreen(user: _usernameController.text,)),
          );
          }
          else{
          text = "Login Fail, Please Try Again";
          }
          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}

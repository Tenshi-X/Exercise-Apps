import 'package:flutter/material.dart';
import 'package:presentation_material/pages/loginScreen.dart';

class RouteGenerator {
static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
    case '/':
    return MaterialPageRoute(builder: (_) => LoginScreen());
    default:
    return _errorRoute();
    }
}
    static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
    return Scaffold(
    appBar: AppBar(title: Text("Error")),
    body: Center(child: Text('Error page')),
    );
    });
    }
}
import 'package:flutter/material.dart';
import 'package:presentation_material/pages/contactScreen.dart';
import 'package:presentation_material/pages/hobbyScreen.dart';
import 'package:presentation_material/pages/profileScreen.dart';

class MainScreen extends StatelessWidget {
  final String user;

  const MainScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, $user !"),
      ),
      body: MyStatefulWidget(),
      drawer: Drawer(
        child: ListView(
            children: [
              DrawerHeader(
                margin: EdgeInsets.all(0),
                child: Text('MENU',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 41, 111),
                ),
                ),
              ListTile(
                title: Text('Return to Login',style: TextStyle(color: Colors.blue),),
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/',
                  );
                },
              )
            ],
        )
        ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget( {Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: [
        ProfileScreen()
      ]
    ),
    ListView(
      children: [
        HobbyScreen()
      ],
    ),
    ListView(
      children: [
        contactScreen()
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Hobbies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

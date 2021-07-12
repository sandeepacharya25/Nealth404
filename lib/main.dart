import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/screens/homepage.dart';
import 'package:hackathon/screens/pharmacy.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:NavigationBar() ,
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}


class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Pharmacy(),
    Text('next'),
    Text('next'),
    Text('next'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white38,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.green[400],
          ),
          Icon(
            Icons.medication,
            size: 30,
            color: Colors.green[400],
          ),
          RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.red,
            child: Icon(
              Icons.add,
              size: 40.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),

         
          Icon(
            Icons.bloodtype,
            size: 30,
            color: Colors.green,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.green[400],
          ),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../account_screen.dart';
import '../message_screen.dart';
import 'header.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    Beranda(),
    Pesan(),
    Akun(),
  ];

  void onItemTap(int index){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(
             icon:  Icon(Icons.home, size: 24,),
              label: "home",
         ),
         BottomNavigationBarItem(
           icon:  Icon(Icons.shopping_cart, size: 24,),
           label: "cart",
         ),
         BottomNavigationBarItem(
           icon:  Icon(Icons.person, size: 24),
           label: "account",
         ),
       ],
       currentIndex: 0,
        selectedItemColor: Color(0xFFF91091E),
        unselectedItemColor: Colors.grey,
        onTap: onItemTap,
      ),

      body: _widgetOptions.elementAt(selectedIndex),

    );
  }
}


class Beranda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFF91091E),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
                "https://i.ibb.co/GdSM4m0/bookstore-icon-37380.png",
                height: 45, width: 45),
           Text("BOOKS STORE"),
            Icon(Icons.search, size: 24, color: Colors.white),
          ],
        ),
        elevation: 0,
      ),
      body: Header(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'AccountScreen.dart';
import 'MessageScreen.dart';

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
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        color: Color(0xFFF91091E),
        backgroundColor: Colors.white,


        height: 50,
        items: <Widget>[
          Icon(Icons.home, size: 24, color: Colors.white),
          Icon(Icons.shopping_cart, size: 24, color: Colors.white),
          Icon(Icons.person, size: 24, color: Colors.white),
        ],
        animationCurve: Curves.easeInBack,
        animationDuration: const Duration(milliseconds: 280),
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
            Image.network("https://i.ibb.co/GdSM4m0/bookstore-icon-37380.png", height: 45, width: 45),
           Text("BOOKS STORE"),
            Icon(Icons.search, size: 24, color: Colors.white),
          ],
        )


      ),
      body: Header(),

    );
  }
}


class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        
        Container(
              height: size.height * .15,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFF91091E),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 18, top: 12),
                child: Text("Good Morning\nYusuf!", style: TextStyle(fontSize: 28, color:Colors.white, ),),
              ),
            ),
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today's Special Offer", style: TextStyle(fontSize: 22, color:Colors.black, fontWeight: FontWeight.bold ),),
                   OutlinedButton(onPressed: (){},
                       child: Text("View All", style: TextStyle(color: Color(0xFFF91091E)),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 8),
                child: Container(
                  height: 180,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://i.ibb.co/yVsPtbP/00cf0-shooctober-all-store-landscape.jpg'),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://i.ibb.co/yVsPtbP/00cf0-shooctober-all-store-landscape.jpg'),
                          ),
                        ),Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://i.ibb.co/yVsPtbP/00cf0-shooctober-all-store-landscape.jpg'),
                          ),
                        ),
                      ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Seller", style: TextStyle(fontSize: 22, color:Colors.black, fontWeight: FontWeight.bold ),),
                    ElevatedButton(onPressed: (){},
                        child: Text("View All", style: TextStyle(color: Colors.black),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 8),
                child: Container(
                  height: 185,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              Image.network(
                                  'https://i.ibb.co/M1WXtwS/bintang-fix.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/fXjvyvV/tentang-kamu.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/Y3rfdYR/selena.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/1z9BKwK/hujan.jpg'),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 12, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Brand New", style: TextStyle(fontSize: 22, color:Colors.black, fontWeight: FontWeight.bold ),),
                    TextButton(onPressed: (){},
                        child: Text("View All", style: TextStyle(color: Colors.black),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 8),
                child: Container(
                  height: 185,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/PrCTvYV/matahari.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/Y3rfdYR/selena.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/MpvT2Nb/bulan.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                          Image.network(
                              'https://i.ibb.co/fCH9QjR/nebula.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),

      ],

        ),
    );
  }
}






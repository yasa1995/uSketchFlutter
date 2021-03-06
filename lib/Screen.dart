import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutterloginui/Componets/horizontal_listView.dart';
import 'package:flutterloginui/Componets/products.dart';
import 'package:flutterloginui/main.dart';
import 'package:flutterloginui/pages/cart.dart';
import 'package:flutterloginui/Componets/wallet.dart';
import 'package:flutterloginui/Componets/colorPicker.dart';
import 'package:flutterloginui/pages/about.dart';

import 'package:flutterloginui/Componets/loginGoogle.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    Widget ImageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/youSketch1.jpg"),
          AssetImage("assets/images/youSketch2.jpg"),
          AssetImage("assets/images/youSketch3.jpg"),
          AssetImage("assets/images/youSketch4.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotColor: Color(0xFFBD34C59),
        dotSize: 4,
      ),
    );
    return Scaffold(
      //App bar to
      appBar: AppBar(
        title: Text("U Sketch"),
        backgroundColor: Color(0xFFBD34C59),
        // actions: [
        //   new IconButton(
        //       icon: Icon(
        //         Icons.search,
        //         color: Colors.white,
        //       ),
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Wallet(),
        //           ),
        //         );
        //       }),
        // new IconButton(
        //   icon: Icon(
        //     Icons.shopping_cart,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => cart(),
        //       ),
        //     );
        //   },
        // )
        // ],
      ),
      body: Column(
        children: [
          ImageCarousel,
          //Categories List
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Categories"),
          // ),
          //HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Our Products",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800),
            ),
          ),

          Flexible(child: Products()),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("U Sketch"),
              accountEmail: Text("usketh20@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/uSketch.jpg"),
              decoration: BoxDecoration(
                color: Color(0xFFBD34C59),
              ),
            ),
            InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                )
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => SecondPage(),
            //       ),
            //     );
            //   },
            //   child: ListTile(
            //     title: Text("My Account"),
            //     leading: Icon(
            //       Icons.person,
            //       color: Color(0xFFBD34C59),
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cart(),
                  ),
                );
              },
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aboutPage(),
                  ),
                );
              },
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Color(0xFFBD34C59),
                ),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     // signOutGoogle().then((value) => Navigator.pushAndRemoveUntil(
            //     //     context,
            //     //     MaterialPageRoute(
            //     //       builder: (context) => LoginPage(),
            //     //     ),
            //     //     (route) => false));
            //   },
            //   child: ListTile(
            //     title: Text("Sign Out"),
            //     leading: Icon(
            //       Icons.settings_backup_restore,
            //       color: Color(0xFFBD34C59),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 400.0,
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.1,
            ),
            Container(
              color: Colors.limeAccent,
              alignment: Alignment.bottomLeft,
              child: Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Row(
                    children: [
                      Text("Made in "),
                      Container(
                          height: 20.0,
                          width: 20.0,
                          child: Image.asset("assets/images/srilanka.jpg")),
                      Text(" with"),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              color: Colors.black,
              width: double.infinity,
              height: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}

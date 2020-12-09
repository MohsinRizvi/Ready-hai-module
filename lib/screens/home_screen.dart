import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:privateshop/screens/horizontal_section.dart';
import 'package:privateshop/screens/recommended_screen.dart';

// ignore: camel_case_types
class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  bool val = true;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  contain(IconData ic, String name) {
    return Row(
      children: <Widget>[
        Container(
          height: 40,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  ic,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Center(
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.grey.shade100,
              leading: Icon(
                Icons.location_on,
                size: 30,
                color: Colors.grey.shade700,
              ),
              title: Text(
                'Diamond District, Amsterdam',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 5, bottom: 9),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/circle.jpg'),
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: new InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      hintText: 'Find Your Pets',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                          onPressed: null),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Horizontal(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Recommended',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Recommended(),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(1.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          val
                              ? contain(Icons.home, 'Home')
                              : IconButton(
                                  icon: Icon(Icons.home),
                                  onPressed: () {
                                    setState(() {
                                      val = true;
                                      val1 = false;
                                      val2 = false;
                                      val3 = false;
                                    });
                                  }),
                          val1
                              ? contain(Icons.favorite_border, 'Favourites')
                              : IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {
                                    setState(() {
                                      val = false;
                                      val1 = true;
                                      val2 = false;
                                      val3 = false;
                                    });
                                  }),
                          val2
                              ? contain(Icons.shopping_basket, 'Cart')
                              : IconButton(
                                  icon: Icon(Icons.shopping_basket),
                                  onPressed: () {
                                    setState(() {
                                      val = false;
                                      val1 = false;
                                      val2 = true;
                                      val3 = false;
                                    });
                                  }),
                          val3
                              ? contain(
                                  Icons.notifications_none, 'Notifications')
                              : IconButton(
                                  icon: Icon(Icons.notifications_none),
                                  onPressed: () {
                                    setState(() {
                                      val = false;
                                      val1 = false;
                                      val2 = false;
                                      val3 = true;
                                    });
                                  })
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

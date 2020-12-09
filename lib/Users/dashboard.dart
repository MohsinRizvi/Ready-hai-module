import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:privateshop/Users/PlaceOrder.dart';
import 'package:privateshop/nextpage.dart';
import 'package:privateshop/screens/recommended_screen.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

class Userdashboard extends StatefulWidget {
  @override
  _UserdashboardState createState() => _UserdashboardState();
}

class _UserdashboardState extends State<Userdashboard> {
  List<int> _listitems = new List();
  @override
  // void initState() {
  //   // TODO: implement initState
  //   for (int i = 0; i < 50; i++) {
  //     _listitems.add(i);
  //     print(i);
  //   }
  //   print(_listitems);
  //   super.initState();
  // }
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
          appBar: AppBar(
            title: Text("ReadyhaiStandALone"),
            backgroundColor: Colors.teal,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: PlaceOrder(),
                    ),
                  );
                },
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal[300],
                  ),
                  child: Image.asset(
                    'images/ReadyHaiLogo.png',
                    height: 200,
                    width: 600,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.event_note),
                  title: Text('Chat With Us'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   PageTransition(
                    //     type: PageTransitionType.rightToLeftWithFade,
                    //     child: Tawkto(),
                    //   ),
                    // );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.event_note),
                  title: Text('Term And Conditions'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   PageTransition(
                    //     type: PageTransitionType.rightToLeftWithFade,
                    //     child: Terms(),
                    //   ),
                    // );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.data_usage),
                  title: Text('Profile'),
                  // onTap: share,
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Order History'),
                  // onTap: share,
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share App'),
                  // onTap: share,
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Sign Out'),
                  // onTap: share,
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.teal,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.2),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: ListTile(
                              title: Image.asset(
                                'images/ReadyHaiLogo.png',
                                height: 200,
                                width: 600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 150.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.2),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text(
                                    "ADDRESS:Codeomatic.com",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(14.0, 180.0, 14.0, 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.2),
                          elevation: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25.0),
                                  ),
                                  Text(
                                    'Number of Reviews: ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  SmoothStarRating(
                                      allowHalfRating: true,
                                      starCount: 5,
                                      size: 24.0,
                                      color: Colors.amber,
                                      borderColor: Colors.amber,
                                      spacing: 0.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  )),

              ///Listview//
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                color: Colors.white,
                height: 170.0,
                width: double.maxFinite,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Category(Icons.category, "C1", () {}),
                    Category(Icons.category, "C2", () {}),
                    Category(Icons.category, "C3", () {}),
                    Category(Icons.category, "C4", () {}),
                    Category(Icons.category, "C5", () {}),
                    Category(Icons.category, "C6", () {}),
                    Category(Icons.category, "C7", () {}),
                    Category(Icons.category, "C8", () {}),
                    Category(Icons.category, "C9", () {}),
                  ],
                ),
              ),
              Recommended(),
              cardcategory("Mobile", Image.asset(""), "120000", () {}),
              cardcategory("Mobile", Image.asset(""), "150000", () {}),
              cardcategory("Mobile", Image.asset(""), "160000", () {}),
              cardcategory("Mobile", Image.asset(""), "170000", () {}),
              cardcategory("Mobile", Image.asset(""), "180000", () {}),
              cardcategory("Mobile", Image.asset(""), "190000", () {}),
              cardcategory("Mobile", Image.asset(""), "200000", () {}),
                RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: PlaceOrder(),
                    ),
                  );
                },
                color: Colors.teal[300],
                elevation: 11,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Text(
                  'Place Order',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
                 SizedBox(
                height: 40,
              ),
              
              Stack(
                children: <Widget>[
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Container(
                      height: 60,
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
            
           
            ]),
          ),
        ));
  }
}

class Category extends StatelessWidget {
  final IconData icn;
  final String name;
  final Function onPress;
  Category(this.icn, this.name, this.onPress);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 20, right: 20, bottom: 20),
      height: 80,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: RaisedButton(
        padding: EdgeInsets.all(12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        color: Colors.white,
        onPressed: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topLeft,
                      colors: [
                        Colors.teal[300],
                        Color(0xff30bc68),
                      ])),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  icn,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name.toUpperCase(),
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class cardcategory extends StatelessWidget {
  String name;
  String price;
  Image picture;
  Function func;
  cardcategory(this.name, this.picture, this.price, this.func);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 20, right: 20, bottom: 20),
      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
      height: 200,
      width: 300,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(10),
      //       topRight: Radius.circular(10),
      //       bottomLeft: Radius.circular(10),
      //       bottomRight: Radius.circular(10)),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 5,
      //       blurRadius: 7,
      //       offset: Offset(0, 3), // changes position of shadow
      //     ),
      //   ],
      // ),
      child: RaisedButton(
        padding: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        color: Colors.white,
        onPressed: func,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(50.0),
              //     gradient: LinearGradient(
              //         begin: FractionalOffset.bottomCenter,
              //         end: FractionalOffset.topLeft,
              //         colors: [
              //           Colors.teal[300],
              //           Color(0xff30bc68),
              //         ])),
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image(
                    image: AssetImage('images/mob.jpg'),
                    height: 80,
                    width: 250,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                name.toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                price.toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

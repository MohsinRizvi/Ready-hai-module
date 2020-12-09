import 'package:flutter/material.dart';

import 'cc.dart';
import 'nextpage.dart';

class front extends StatefulWidget {
  @override
  _frontState createState() => _frontState();
}

class _frontState extends State<front> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text("ReadyHai"),
            ),
            body: SingleChildScrollView(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                Container(
                    height: 105,
                    child: ListView(
                        padding: EdgeInsets.only(left: 30),
                        scrollDirection: Axis.horizontal,
                        children: getCategories())),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 20.0),
                //   color: Colors.white,
                //   height: double.infinity,
                //   width: double.maxFinite,
                //   child: ListView(
                //     scrollDirection: Axis.vertical,
                //     children: <Widget>[
                //       cardcategory(
                //           "Mobile",
                //           Image.asset(
                //             'images/mob.jpg',
                //             height: 300,
                //             width: 200,
                //           ),
                //           "120000",
                //           () {}),
                //       cardcategory(
                //           "Mobile",
                //           Image.asset(
                //             'images/mob.jpg',
                //             height: 300,
                //             width: 200,
                //           ),
                //           "120000",
                //           () {}),
                //       cardcategory("Mobile", Image.asset(""), "120000", () {}),
                //       cardcategory(
                //           "Mobile",
                //           Image.asset(
                //             'images/mob.jpg',
                //             height: 300,
                //             width: 200,
                //           ),
                //           "120000",
                //           () {}),
                //     ],
                //   ),
                // ),
                // Column(
                //   children: [],
                // ),
                RaisedButton(
                    child: Text("NextPage"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext) => nextpage()));
                    })
              ],
            )) // This trailing comma makes auto-formatting nicer for build methods.
            ));
  }
}

List<String> categoryNames = ["C1", "C2", "C3", "C4", "C5"];
Map categoryIcons = {
  "C1": Icon(Icons.phonelink, color: Colors.white, size: 50),
  "C2": Icon(Icons.wb_incandescent, color: Colors.white, size: 50),
  "C3": Icon(Icons.brush, color: Colors.white, size: 50),
  "C4": Icon(Icons.directions_run, color: Colors.white, size: 50),
  "C5": Icon(Icons.healing, color: Colors.white, size: 50),
};
List<Widget> getCategories() {
  List<Widget> categories = [];
  for (String category in categoryNames) {
    categories.add(CategoryCard(
        categoryName: category, categoryIcon: categoryIcons[category]));
  }
  return categories;
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
      height: 250,
      width: 400,
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
        onPressed: func,
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
                  padding: const EdgeInsets.all(15),
                  child: Image(
                    image: AssetImage('images/mob.jpg'),
                    height: 100,
                    width: 200,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name.toUpperCase(),
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price.toUpperCase(),
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
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

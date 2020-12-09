import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:page_transition/page_transition.dart';
import 'package:privateshop/UploadImage.dart';
import 'package:privateshop/category.dart';
import 'package:privateshop/front.dart';

void main() {
  runApp(PlaceOrder());
}

class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  var firstColor = Colors.teal[300], secondColor = Colors.teal[300];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // color: Colors.white,
      // padding: EdgeInsets.only(bottom: 52),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipPath(
                        clipper: OvalBottomBorderClipper(),
                        child: Container(
                          height: 200,
                          color: Colors.teal[300],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onTap: () => Navigator.pop(context),
                                )
                              ],
                            ),
                            SizedBox(height: 40),
                            Text(
                              "Place Order",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  NiceButton(
                    radius: 20,
                    padding: const EdgeInsets.all(5),
                    text: "Choose Image",
                    icon: Icons.cloud_upload,
                    gradientColors: [firstColor, secondColor],
                    onPressed: () {},
                    background: null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NiceButton(
                    radius: 20,
                    padding: const EdgeInsets.all(5),
                    text: "Capture Image",
                    icon: Icons.linked_camera,
                    gradientColors: [firstColor, secondColor],
                    onPressed: () {},
                    background: null,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, top: 20, right: 20, bottom: 20),
                    padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                    height: 200,
                    width: 300,
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
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      expands: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.teal[300].withOpacity(0.0),
                              width: 2.0),
                        ),
                      ),
                    ),
                  ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

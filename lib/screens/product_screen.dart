import 'package:flutter/material.dart';

// ignore: camel_case_types
class Product_screen extends StatelessWidget {
  final image;
  final name;

  final breed;
  Product_screen({this.breed, this.name, this.image});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 50,
              left: -10,
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                elevation: 2.0,
                fillColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20.0,
                ),
                shape: CircleBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, top: 30, right: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 25),
                              ),
                              Text(
                                'New',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                breed,
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                              Text(
                                'hero',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/circle.jpg'),
                            ),
                            title: Text(
                              'Mohsin',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            subtitle: Text(
                              'owner',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            trailing: Wrap(
                              spacing: 12, // space between two icons
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ), // icon-1
                                Text(
                                  '1 km',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.5),
                                ) // icon-2
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "$name is a super cute pet. $name loyal, humble, "
                            "easily trainable and easily maintainable pet. Children "
                            "love to play with $breed. "
                            "$name is friendly and harmless pet.",
                            style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.5,
                                color: Colors.grey.shade400),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 50,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey.shade100,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 1.7,
                              child: Center(
                                child: Text(
                                  'GET ME HOME',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

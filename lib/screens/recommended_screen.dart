import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:privateshop/screens/product_screen.dart';

class Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 323,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            images: 'images/mob.jpg',
            name: 'Mobile',
            breed: 'IOS ',
          ),
          Category(
            images: 'images/cat_petapp.jpg',
            name: 'Callie',
            breed: 'Persian Cat',
          ),
          Category(
            images: 'images/dog_petapp.jpg',
            name: 'Whisky',
            breed: 'Havanese Dog',
          ),
          Category(
            images: 'images/birds_petapp.jpg',
            name: 'Birds',
            breed: 'Agapornis',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.name, this.images, this.breed, this.type});
  final String name;
  final images;
  final breed;
  final type;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.only(right: 13.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Product_screen(
                        name: name,
                        image: images,
                        breed: breed,
                      )));
            },
            child: Stack(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(3, 12),
                          )
                        ],
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            images,
                          ),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )),
                    height: 295,
                    width: 200),
                Positioned(
                  bottom: 8,
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade200,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2.5,
                            ),
                            Text(
                              breed,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff8e867d),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      height: 80,
                      width: 200),
                )
              ],
            ),
          ),
        )
        // GridTile(
        //   footer:Text('hii')  ,
        //   // Container(
        //     // decoration: BoxDecoration(
        //     //     color: Colors.black,
        //     //     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
        //     //       bottomLeft:  Radius.circular(30),
        //     //       bottomRight:  Radius.circular(30),
        //     //     )
        //     // ),
        //   // ),
        //  child: Container(
        //   height:180,
        //   width: 210,
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.grey.shade300,
        //         spreadRadius: 3,
        //         blurRadius: 4,
        //         offset: Offset(5,7),
        //       )
        //     ],
        //     image: DecorationImage(
        //       fit: BoxFit.fill,
        //         image: AssetImage(images,
        //         )),
        //     color: Colors.black,
        //     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
        //     bottomLeft:  Radius.circular(30),
        //       bottomRight:  Radius.circular(30),
        //     )
        //   ),
        //     ),
        // )

        );
  }
}

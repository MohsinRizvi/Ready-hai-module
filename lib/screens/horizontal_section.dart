import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          IconButton(icon: Icon(Icons.filter_list),
              onPressed: null),
          Category(
            name: 'Cats',
          ),

          Category(
            name: 'Dogs',
          ),

          Category(
            name: 'Birds',
          ),

          Category(
            name: 'Rabbit',
          ),
          Category(
            name: 'Fish',
          ),


        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  Category({this.name,});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(child: Text(name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              ),),
            ),
          )
      ),
    );
  }
}

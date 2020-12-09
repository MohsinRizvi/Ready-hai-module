

import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(home:new app(),));
}
class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> with SingleTickerProviderStateMixin{
  TabController tcontrol;
  @override
  void initState() {
    tcontrol= new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new TabBarView(
          controller: tcontrol,
          children: <Widget>[
            new Center(child: new Card(color: Colors.pink,child:new Padding(padding: const EdgeInsets.all(200.0),))),
            new Center(child: new Text('Add call'),),
            new Center(child: new Card(color: Colors.cyan,child:new Padding(padding: const EdgeInsets.all(200.0),))),
            new Center(child: new Text('super visor'),),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.deepOrangeAccent,
          child: new TabBar(
            controller: tcontrol,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.card_giftcard),),
              new Tab(icon: new Icon(Icons.add_call),),
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.supervised_user_circle),),
            ],
          ),
        ),
        appBar: new AppBar(
          leading: new Icon(Icons.menu),
          title: new Text('Appbar'),
          backgroundColor: Colors.green,
          elevation: 30.0,
          centerTitle: true,
          titleSpacing: 70.0,
          toolbarOpacity: 0.5,
          bottom: new TabBar(
            controller:tcontrol ,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.account_circle),),
              new Tab(icon: new Icon(Icons.add_call),),
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.supervised_user_circle),),
            ],

          ) ,
        )

    );
  }
}
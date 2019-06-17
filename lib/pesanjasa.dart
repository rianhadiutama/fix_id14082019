import 'dart:async';
import 'package:flutter/material.dart';

class PesanJasa extends StatefulWidget {

  @override
  _PesanJasa createState() => _PesanJasa();
}

class _PesanJasa extends State<PesanJasa> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FIX ID'),

        actions: <Widget>[

        ],
        leading: new Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
      body:
      new Container(
            child:
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //DATA PEMESANAN
                  new Container(
                    child:
                      new Text(
                      "DATA PEMESANAN",
                        style: new TextStyle(fontSize:23.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                      ),
    
                    padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 1.0),
                    alignment: Alignment.centerLeft,
                    width: 200.0,
                    height: 75.0,
                  ),
    
                  //ISI DATA 
                  new Container(
                    padding: const EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 1.0),
                    alignment: Alignment.center,
                    width: 300.0,
                    height: 75.0,
                    child: 
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        new TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Nama Pemesanan Anda',
                              labelText: 'Nama Anda'),
                          controller: new TextEditingController(),
                          ),
                        ]
                      ),
                  ),
                  
                  new Container(
                    padding: const EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 1.0),
                    alignment: Alignment.center,
                    width: 300.0,
                    height: 75.0,
                    child: 
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        new TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'contoh@emailanda.com',
                              labelText: 'Email'),
                          controller: new TextEditingController(),
                          ),
                        ]
                      ),
                  ),
    
                  new Container(
                    padding: const EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 1.0),
                    alignment: Alignment.center,
                    width: 300.0,
                    height: 75.0,
                    child: 
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        new TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '+62xxxxxxxxxx / 08xxxxxxxxx',
                              labelText: 'Nomor HP/WA'),
                          controller: new TextEditingController(),
                          ),
                        ]
                      ),
                  ),

    
                  new Container(
                    padding: const EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 1.0),
                    alignment: Alignment.center,
                    width: 300.0,
                    height: 75.0,
                    child: 
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        new TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Kendala'),
                          controller: new TextEditingController(),
                          ),
                        ]
                      ),
                  ),

    
                ]

              ),
    
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 1.0),
            alignment: Alignment.center,
          ), 
    );
  }
}
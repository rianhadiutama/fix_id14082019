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
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text('DATA PEMESANAN',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold
            )
        ),

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
                              labelText: 'Nama Lengkap'),
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
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
                  new Container(
                    padding: const EdgeInsets.fromLTRB(3.0, 3.0, 3.0, 1.0),
                    alignment: Alignment.center,
                    width: 300.0,
                    height: 100.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new MaterialButton(
                          minWidth: 100.0,
                          height: 42.0,
                          onPressed: () {

                          },
                          color: Colors.cyan[800],
                          child: Text('Pesan Sekarang', style: TextStyle(color: Colors.white)),
                        ),
                        new MaterialButton(
                          minWidth: 100.0,
                          height: 42.0,
                          onPressed: () {

                          },
                          color: Colors.cyan[800],
                          child: Text('Cancel', style: TextStyle(color: Colors.white)),
                        ),
                      ],
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
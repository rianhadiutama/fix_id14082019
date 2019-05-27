import 'package:flutter/material.dart';

class DeskripsiServis extends StatefulWidget {
  @override
  Home_Deskripsi createState() => Home_Deskripsi();
}

class Home_Deskripsi extends State<DeskripsiServis> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('DESKRIPSI',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold
            )
        ),
        actions: <Widget>[

        ],
        leading: new Container(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            height: 250,
            color: Colors.white70,
            child: new Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Container(
                      child:
                      new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Image.network(
                                    'https://www.hondacianjur.com/wp-content/uploads/2017/06/cropped-logo-honda.png',
                                    fit:BoxFit.fill,
                                    width: 75.0,
                                    height: 75.0,
                                  ),

                                  new Text(
                                    "ASTRA HONDA",
                                    style: new TextStyle(fontSize:18.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "Baros Cimahi",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "qWerty1",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(
                                          child:
                                          new IconButton(
                                            icon: const Icon(Icons.phone),
                                            iconSize: 43.0,
                                            color: const Color(0xFF000000),
                                          ),

                                          color: const Color(0xFF30ec35),
                                          padding: const EdgeInsets.all(10.0),
                                          alignment: Alignment.center,
                                          width: 64.0,
                                          height: 64.0,
                                        ),

                                        new Container(
                                          color: const Color(0xFFcf4949),
                                          padding: const EdgeInsets.all(10.0),
                                          alignment: Alignment.center,
                                          width: 64.0,
                                          height: 64.0,
                                        ),

                                        new Container(
                                          child:
                                          new Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                new RaisedButton(key:null, onPressed:(){},
                                                    color: const Color(0xFFe0e0e0),
                                                    child:
                                                    new Text(
                                                      "BUTTON 5",
                                                      style: new TextStyle(fontSize:12.0,
                                                          color: const Color(0xFF000000),
                                                          fontWeight: FontWeight.w200,
                                                          fontFamily: "Roboto"),
                                                    )
                                                )
                                              ]

                                          ),

                                          padding: const EdgeInsets.all(0.0),
                                          alignment: Alignment.center,
                                          width: 250.0,
                                          height: 64.0,
                                        )
                                      ]

                                  )
                                ]

                            )
                          ]

                      ),

                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.center,
                      width: 1.7976931348623157e+308,
                      height: 250.0,
                    )
                  ]

              ),




            ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),


    );
  }
}
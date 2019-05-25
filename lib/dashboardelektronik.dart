import 'package:flutter/material.dart';

class DashboardElektronik extends StatefulWidget {
  @override
  _DashboardElektronikState createState() => _DashboardElektronikState();
}

class _DashboardElektronikState extends State<DashboardElektronik> {
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
              new Container(
                child:
                new Image.network(
                  'https://img.freepik.com/free-vector/sale-background-template_1361-554.jpg?size=626&ext=jpg',
                  fit:BoxFit.fill,

                ),

                color: Colors.cyan,
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                width: 1.7976931348623157e+308,
                height: 200.0,
              ),

              new Container(
                child:
                new Container(
                  child:
                  new Container(
                    child:
                    new Container(
                      child:
                      new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new Container(
                              child:
                              new Text(
                                "PILIH SERVIS ELEKTRONIK",
                                style: new TextStyle(fontSize:19.0,
                                    color: const Color(0xFFffffff),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Times New Roman"),
                              ),

                              color: Colors.cyan,
                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.center,
                              width: 1.7976931348623157e+308,
                              height: 50.0,
                            ),

                            new Container(
                              child:
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: () => {},
                                    padding: EdgeInsets.all(10.0),
                                    child: Column( // Replace with a Row for horizontal icon + text
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.settings_cell),
                                        Text("HANDPHONE"
                                          ,
                                          style: new TextStyle(fontSize:12.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Times New Roman"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () => {},
                                    padding: EdgeInsets.all(10.0),
                                    child: Column( // Replace with a Row for horizontal icon + text
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.camera_enhance),
                                        Text("KAMERA"
                                          ,
                                          style: new TextStyle(fontSize:12.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Times New Roman"),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),

                              padding: const EdgeInsets.all(10.0),
                              alignment: Alignment.center,
                              width: 1.7976931348623157e+308,
                              height: 160.0,
                            )
                          ]

                      ),

                      color: const Color(0xFFfafafa),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.center,
                    ),

                    color: const Color(0xFF9dd8df),
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                  ),

                  padding: const EdgeInsets.all(0.0),
                  alignment: Alignment.center,
                ),

                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                width: 1.7976931348623157e+308,
                height: 250.0,
              )
            ]

        ),

        color: const Color(0xFFffffff),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
      ),

    );
  }

}
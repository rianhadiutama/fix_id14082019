import 'package:flutter/material.dart';
import 'dashboardelektronik.dart';
import 'dashboardkendaraan.dart';
import 'dashboardserviskomputer.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text('FIX ID'),

        actions: <Widget>[

        ],
        leading: new Container(),
      ),
      /**bottomNavigationBar: BottomNavigationBar(
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
      ),*/
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
                                "PILIH SERVIS ",
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
                                  onPressed: () => {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => DashboardElektronik())),
                                  },
                                    padding: EdgeInsets.all(10.0),
                                    child: Column( // Replace with a Row for horizontal icon + text
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.photo_camera),
                                        Text("ELEKTRONIK"
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
                                    onPressed: () => {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => DashboardKendaraan())),
                                    },
                                    padding: EdgeInsets.all(10.0),
                                    child: Column( // Replace with a Row for horizontal icon + text
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.local_car_wash),
                                        Text("KENDARAAN"
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
                                    onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => DashboardServisKomputer())),
                                    },
                                    padding: EdgeInsets.all(10.0),
                                    child: Column( // Replace with a Row for horizontal icon + text
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.computer),
                                        Text("KOMPUTER"
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
                              height: 100.0,
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
                height: 175,
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
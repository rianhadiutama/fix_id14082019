import 'package:flutter/material.dart';
import 'deskripsibengkel.dart';
import 'maps.dart';

class ListServisMobil extends StatefulWidget {
  static String tag = 'contactlist-page';

  @override  State<StatefulWidget> createState() {
    return new _ListServisMobilState();
  }
}


class _ListServisMobilState extends State<ListServisMobil> {
  PageController _pageController;
  int _page = 0;
  @override
  void initState(){
    super.initState();
    _pageController = new PageController();
  }
  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page){
    _pageController.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[

            ],
            leading: new Container(),
            title: Text('MOBIL',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold
                )
            )
        )

      ,

        body:
        new Container(
          child:
          new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: new FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Colors.cyanAccent.shade100,
                      elevation: 5.0,
                      child: MaterialButton(
                        minWidth: 200.0,
                        height: 42.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MapLayout(),
                              )
                          );
                        },
                        color: Colors.cyan[800],
                        child: Text('Cari mitra dengan Maps', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),

                new Container(
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        new Container(
                          child:
                          new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                  child:
                                  new FlatButton(key:null, onPressed:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => DeskripsiServis()),);
                                  },
                                      child:
                                      new Image.network(
                                        'https://www.hondacianjur.com/wp-content/uploads/2017/06/cropped-logo-honda.png',
                                        fit:BoxFit.fitHeight,
                                      ),
                                  ),

                                  color: const Color(0xFFffffff),
                                  padding: const EdgeInsets.all(10.0),
                                  alignment: Alignment.center,
                                  width: 100.0,
                                  height: 150.0,
                                ),


                                new Container(
                                  child:
                                  new Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        new Text(
                                          "ASTRA HONDA",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Text(
                                          "BENGKEL KENDARAAN HONDA",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Text(
                                          "0853-1715-2244",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Text(
                                          "Buka Pukul 06.00",
                                          style: new TextStyle(fontSize:12.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w200,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Container(
                                          child:
                                          new Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0),

                                                new Icon(
                                                    Icons.star_border,
                                                    color: const Color(0xFF000000),
                                                    size: 24.0)
                                              ]

                                          ),

                                          padding: const EdgeInsets.all(0.0),
                                          alignment: Alignment.center,
                                          width: 120.0,
                                          height: 50.0,
                                        )
                                      ]

                                  ),

                                  padding: const EdgeInsets.all(10.0),
                                  alignment: Alignment.center,
                                  width: 150.0,
                                  height: 160.0,
                                )
                              ]

                          ),

                          padding: const EdgeInsets.all(0.0),
                          alignment: Alignment.center,
                        )
                      ]

                  ),


                )
              ]

          ),

          padding: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
        ),
    );
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}


class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}
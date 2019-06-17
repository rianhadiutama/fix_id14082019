import 'package:flutter/material.dart';
import 'pesanjasa.dart';
import 'lihatrute.dart';

class DeskripsiServis extends StatefulWidget {
  @override
  Home_Deskripsi createState() => Home_Deskripsi();
}

class Home_Deskripsi extends State<DeskripsiServis> {
  bool _PemerimaanPesanJasa = false;
  
  @override
  Widget _PemesananJasaChild(){
    if(_PemerimaanPesanJasa == false){
      return new Container(
                                          child:
                                          new Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                
                                                new RaisedButton(
                                                  key:null, 
                                                  onPressed:(){
                                                  Navigator.push(
                                                    context,
                                                      MaterialPageRoute(builder: (context) => PesanJasa()
                                                      )
                                                  );
                                                },
                                                    color: Colors.cyan[200],
                                                    child:
                                                    new Text(
                                                      "Pesan Jasa",
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
                                        );
    }else{
      return new Container(
                                          child:
                                          new Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                
                                                new RaisedButton(
                                                  key:null, 
                                                  onPressed:(){
                                                  Navigator.push(
                                                    context,
                                                      MaterialPageRoute(builder: (context) => LihatRute()
                                                      )
                                                  );
                                                },
                                                    color: Colors.blueAccent,
                                                    child:
                                                    new Text(
                                                      "Pesan Jasa",
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
                                        );
    }

  }

  Widget build(BuildContext context) {
    
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
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
      body: ListView(
        padding: EdgeInsets.all(5.0),
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
                                    "----------",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "Tiga Naga Mobil Cimahi",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "Bengkel dan Servis Mobil",
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
                                            iconSize: 32.0,
                                          ),

                                          color: Colors.green[400],
                                          padding: const EdgeInsets.all(10.0),
                                          alignment: Alignment.center,
                                          width: 64.0,
                                          height: 64.0,
                                        ),

                                        _PemesananJasaChild(),

                                        new Container(
                                          child:
                                          new IconButton(
                                            icon: const Icon(Icons.mail_outline),
                                            iconSize: 32.0,
                                          ),

                                          color: const Color(0xFFcf4949),
                                          padding: const EdgeInsets.all(10.0),
                                          alignment: Alignment.center,
                                          width: 64.0,
                                          height: 64.0,
                                        ),


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
              child:
              new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Container(
                      child:
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.location_on,
                                color: const Color(0xFF000000),
                                size: 40.0),

                            new Container(
                              child:
                              new Text(
                                "Jl. Baros no. 26, Kabupaten Cibodas, Kecamatan Cimahi Tengah Cimahi",
                                style: new TextStyle(fontSize:13.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"),
                              ),

                              color: const Color(0xFFffffff),
                              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                              alignment: Alignment.center,
                              width: 300.0,
                              height: 60.0,
                            )
                          ]

                      ),

                      color: const Color(0xFFffffff),
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                      alignment: Alignment.topLeft,
                      width: 1.7976931348623157e+308,
                      height: 65.0,
                    )
                  ]

              ),

              padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              alignment: Alignment.center,
              height: 75,
              color: Colors.cyanAccent[100],
            ),
            Container(
              child:
              new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Container(
                      child:
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                                Icons.watch_later,
                                color: const Color(0xFF000000),
                                size: 40.0),

                            new Container(
                              child:
                              new Text(
                                "Buka : 08.00 , Tutup : 16.00",
                                style: new TextStyle(fontSize:13.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto"),
                              ),




                              color: const Color(0xFFffffff),
                              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                              alignment: Alignment.center,
                              width: 300.0,
                              height: 60.0,
                            )
                          ]

                      ),

                      color: const Color(0xFFffffff),
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                      alignment: Alignment.topLeft,
                      width: 1.7976931348623157e+308,
                      height: 65.0,
                    )
                  ]

              ),

              padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              alignment: Alignment.center,
              height: 75,
              color: Colors.cyanAccent[100],
            ),


          ]
      ),


      /*body: ListView(
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
                                    "----------",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "Tiga Naga Mobil Cimahi",
                                    style: new TextStyle(fontSize:12.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Text(
                                    "Bengkel dan Servis Mobil",
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
                                          ),

                                          color: const Color(0xFF30ec35),
                                          padding: const EdgeInsets.all(10.0),
                                          alignment: Alignment.center,
                                          width: 64.0,
                                          height: 64.0,
                                        ),

                                        _PemesananJasaChild(),

                                        new Container(
                                          child:
                                          new IconButton(
                                            icon: const Icon(Icons.mail_outline),
                                            iconSize: 43.0,
                                          ),

                                          color: const Color(0xFFcf4949),
                                          padding: const EdgeInsets.all(10.0),
                                          alignment: Alignment.center,
                                          width: 64.0,
                                          height: 64.0,
                                        ),

                                        
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
            child:
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    child:
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.location_on,
                            color: const Color(0xFF000000), 
                            size: 66.0),
    
                          new Container(
                            child:
                              new Text(
                              "Jl. Baros no. 26, Kabupaten Cibodas, Kecamatan Cimahi Tengah Cimahi",
                                style: new TextStyle(fontSize:13.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                              ),
    
                            color: const Color(0xFFffffff),
                            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                            alignment: Alignment.center,
                            width: 300.0,
                            height: 100.0,
                          )
                        ]
    
                      ),
    
                    color: const Color(0xFFffffff),
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                    alignment: Alignment.center,
                    width: 1.7976931348623157e+308,
                    height: 150.0,
                  )
                ]
    
              ),
    
            padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 1.0),
            alignment: Alignment.center,
            height: 300,
            color: Colors.amber[500],
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child:
            new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Container(
                    child:
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Icon(
                            Icons.access_time,
                            color: const Color(0xFF3631a8), 
                            size: 56.0),
    
                          new Container(
                            child:
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  new Text(
                                  "Buka : 08.00",
                                    style: new TextStyle(fontSize:23.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"),
                                  ),
    
                                  new Text(
                                  "Tutup : 17.00",
                                    style: new TextStyle(fontSize:23.0,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "Roboto"),
                                  )
                                ]
    
                              ),
    
                            color: const Color(0xFFffffff),
                            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                            alignment: Alignment.center,
                            width: 300.0,
                            height: 100.0,
                          )
                        ]
    
                      ),
    
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 1.0),
                    alignment: Alignment.center,
                    width: 1.7976931348623157e+308,
                    height: 150.0,
                  )
                ]
    
              ),
     
          ),
         
        ],
      ),

    **/
    );
  }
}
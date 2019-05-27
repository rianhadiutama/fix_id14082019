import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'dashboardelektronik.dart';
import 'dashboardkendaraan.dart';
/**class NewSplashScreen extends StatefulWidget {
  @override
  _NewSplashState createState() => _NewSplashState();
}

class _NewSplashState extends State<NewSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 5),
            (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()
            ),
          );
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[Colors.cyanAccent,Colors.blueAccent,Colors.blue]),
            ),
          ),
        ],
      )
    );
  }

}
*/

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
          (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()
        ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    var assetImage = new AssetImage('assets/fixid.png');
    var image = new Image(image: assetImage , width: 128.0,height: 128.0);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[Color(0xFF0d1456),Colors.blue,Colors.tealAccent]),
            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: image
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "SERVIS TERPERCAYA",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
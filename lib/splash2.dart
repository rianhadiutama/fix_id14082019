import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'dashboardelektronik.dart';
import 'dashboardkendaraan.dart';
class NewSplashScreen extends StatefulWidget {
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
              gradient: LinearGradient(colors: <Color>[Colors.cyanAccent,Colors.blueAccent]),
            ),
          ),
        ],
      )
    );
  }

}
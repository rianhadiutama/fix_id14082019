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

class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Future.delayed(
    //  Duration(seconds: 5),
    //      (){
    //    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()
    //    ),
    //    );
    //  },
    //);
  }

  @override
  Widget build(BuildContext context) {

      final logo =
        CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/fixid.png'),
      );

      final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      );

      final password = TextFormField(
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      );

      final loginButton = Padding(
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
                  MaterialPageRoute(builder: (context) => Dashboard()
                  )
              );
            },
            color: Colors.cyan[800],
            child: Text('Log In', style: TextStyle(color: Colors.white)),
          ),
        ),
      );
      final registrationLabel = FlatButton(
        child: Text(
          'Belum Daftar? Registrasi !',
          style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {},
      );
      final forgotLabel = FlatButton(
        child: Text(
          'Lupa Password?',
          style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {},
      );


      return Scaffold(

        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgotLabel,
              registrationLabel,
            ],
          ),
        ),
      );

  }
}
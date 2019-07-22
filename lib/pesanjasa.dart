import 'dart:async';
import 'package:flutter/material.dart';
import 'rincian.dart';

class PesanJasa extends StatefulWidget {

  @override
  _PesanJasa createState() => _PesanJasa();
}

class _PesanJasa extends State<PesanJasa> {
  @override
  Widget build(BuildContext context) {
    final namalengkap = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nama',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final nohp = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nomor Handphone',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final kendala = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Kendala',
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

    final tombolpesansekarang = Padding(
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
                MaterialPageRoute(builder: (context) => Rincian()
                )
            );
          },
          color: Colors.cyan[800],
          child: Text('Pesan Sekarang', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    final tombolbatal = FlatButton(
      child: Text(
        'Cancel ?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
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
      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            namalengkap,
            SizedBox(height: 20.0),
            nohp,
            SizedBox(height: 20.0),
            kendala,
            SizedBox(height: 48.0),
            tombolpesansekarang,
            tombolbatal,
          ],
        ),


    );
  }
}
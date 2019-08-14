import 'dart:async';
import 'package:flutter/material.dart';
import 'rincian.dart';
import 'listservis.dart';

class PesanJasa extends StatefulWidget {

  @override
  _PesanJasa createState() => _PesanJasa();
}

class _PesanJasa extends State<PesanJasa> {
  List<String> _locations = ['Ganti Oli','Ganti Busi', 'Servis Ringan', 'Servis Berat']; // Option 2
  String _selectedLocation; // Option 2
  @override
  Widget build(BuildContext context) {
    final nopemesanan = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        icon: const Icon(Icons.add_to_photos),
        hintText: 'Nomor Pemesanan',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final namalengkap = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        icon: const Icon(Icons.person),
        hintText: 'Nama Pemesanan',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final alamatpemesanan = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        icon: const Icon(Icons.home),
        hintText: 'Alamat Pemesanan',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final nohp = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        icon: const Icon(Icons.phone),
        hintText: 'Nomor Handphone',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final jenispemesanan = FormField(
      builder: (FormFieldState state){
        return InputDecorator(
          decoration: InputDecoration(
            icon: const Icon(Icons.add_box),
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          ),
          child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text('Pilih Jenis Servicemu'),
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),

              ),
          ),
        );
      },
    );


    final kendala = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        icon: const Icon(Icons.create),
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
        'Kembali',
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

      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            nopemesanan,
            SizedBox(height: 20.0),
            namalengkap,
            SizedBox(height: 20.0),
            alamatpemesanan,
            SizedBox(height: 20.0),
            nohp,
            SizedBox(height: 20.0),
            jenispemesanan,
            SizedBox(height: 48.0),
            tombolpesansekarang,
            tombolbatal,
          ],
        ),


    );
  }
}
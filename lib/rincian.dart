import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'maps.dart';
import 'pesanjasa.dart';

class Rincian extends StatefulWidget {
  @override
  _RincianState createState() => _RincianState();
}

class _RincianState extends State<Rincian> {

  @override
  Widget build(BuildContext context) {
    final tombolterima = Padding(
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
                MaterialPageRoute(builder: (context) => MapLayout()
                )
            );
          },
          color: Colors.cyan[800],
          child: Text('Terima dan Cari dengan Google Maps', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    final tombolbatal = Padding(
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
                MaterialPageRoute(builder: (context) => PesanJasa()
                )
            );
          },
          color: Colors.cyan[800],
          child: Text('Batalkan Pembayaran.', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Rincian Pembayaran"),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Text('Nomor Pemesanan : '),
              title: Text('ID1239234234'),
            )
          ),
          Card(
              child: ListTile(
                leading: Text('Nama Pemesanan : '),
                title: Text('Rian Hadiutama'),
              )
          ),
          Card(
              child: ListTile(
                leading: Text('Alamat Pemesanan : '),
                title: Text('Cimahi Technopark'),
              )
          ),
          Card(
              child: ListTile(
                leading: Text('Nomor Telepon : '),
                title: Text('081x-xxxx-xxxx'),
              )
          ),
          Card(
              child: ListTile(
                leading: Text('Jenis Kendaraan yang dipilih : '),
                title: Text('Servis Ringan'),
              )
          ),
          Card(
              child: ListTile(
                leading: Text('Total Pembayan: '),
                title: Text('Rp 15.000,00'),
              )
          ),

          SizedBox(height: 48.0),
          tombolterima,
          tombolbatal,
        ],
      )
    
    );
  }
}

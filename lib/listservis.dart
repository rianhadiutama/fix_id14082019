import 'package:flutter/material.dart';
import 'deskripsibengkel.dart';
import 'maps.dart';
import 'pesanjasa.dart';


class ListServis extends StatefulWidget {
  @override
  _ListServisState createState() => _ListServisState();
}

class _ListServisState extends State<ListServis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[

          ],
          leading: new Container(),
          title: Text('DAFTAR SERVIS MOBIL',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold
              )
          ),
      ),
      body: ListView(
        children: <Widget>[
          /**Card(
            child: ListTile(
              leading: new FlatButton(
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
          ),*/

          Card(
            child: ListTile(
              leading: new FlatButton(key:null, onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PesanJasa()),);
              },
                child:
                new Image.network(
                  'https://www.hondacianjur.com/wp-content/uploads/2017/06/cropped-logo-honda.png',
                  fit:BoxFit.fitHeight,
                ),
              ),
              title: Text('Astra Honda'),
              subtitle: Text(
                      'No Telepon : 0853-1715-2244'

              ),
              trailing: new Container(
                child:
                new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star_border,
                          color: const Color(0xFF000000),
                          size: 20.0)
                    ]

                ),

                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
                width: 120.0,
                height: 50.0,
              ),
              isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: new FlatButton(key:null, onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PesanJasa()),);
              },
                child:
                new Image.asset('assets/kisspng-toyota-sa-car-toyota-camry-logo-5aeca091512ac4.4912578815254570413325.png',width: 50,height: 50,),
              ),
              title: Text('Toyota Servis'),
              subtitle: Text(
                  'No Telepon : 0853-1715-2244'

              ),
              trailing: new Container(
                child:
                new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star,
                          color: const Color(0xFF000000),
                          size: 20.0),

                      new Icon(
                          Icons.star_border,
                          color: const Color(0xFF000000),
                          size: 20.0)
                    ]

                ),

                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
                width: 120.0,
                height: 50.0,
              ),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}


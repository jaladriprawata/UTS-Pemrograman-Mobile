import 'package:belajar_flutter/coba_saya.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'MyAppl.dart';
import 'bmi_result.dart';
import 'about_me.dart';

void main(){
  runApp(new MaterialApp(
//    theme: ThemeData.dark(),
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new Home(),
      '/Haldua' : (BuildContext context) => new MyProfil(),
      '/Haltiga' : (BuildContext context) => new MyzApp(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int tahun = 0;

  String _jk="";

  void _pilihJk(String value){
    setState(() {
      _jk = value;
    });
  }

  var _nama = new TextEditingController();
  var _zodiac = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Tentang Zodiac'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: (){
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                Image.asset('assets/aku.jpg'),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new TextField(
                  controller: _nama,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Nama",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tahun = int.parse(txt);
                    });
                  },

                  keyboardType: TextInputType.text,
                  maxLength: 4,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Tahun Lahir",
                      labelText: "Tahun Lahir",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _zodiac,
                        decoration : new InputDecoration(
                          hintText: "Masukan zodiac",
                          labelText: "Zodiac",
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                      )
                    )],
                ),

                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new BMIResult(nama_lengkap : _nama.text, zodiac : _zodiac.text, tahun_lahir: tahun),
                      );
                      Navigator.of(context).push(route);
                      /*
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat)),
                      );
                       */
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'Masuk',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



































//void main() {
//  runApp(
//    MyApp()
//
//  );
//
//  }

//class MyColumn extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: Container(
//          color: Colors.tealAccent,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceAround,
//            mainAxisSize: MainAxisSize.max,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              Icon(
//                Icons.battery_alert,
//                size: 100,
//                color: Colors.red,
//              ),
//              Icon(
//                Icons.battery_charging_full,
//                size: 200,
//                color: Colors.orange,
//              ),
//              Icon(
//                Icons.battery_full,
//                size: 100,
//                color: Colors.green,
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//
//
//






























//    MaterialApp(
//        home: Scaffold(
//            backgroundColor: Colors.blue,
//            appBar: AppBar(
//              leading: Icon(Icons.web),
//              title: Text('Aplikasi Jaladri'),
//              actions: <Widget>[Icon(Icons.thumb_up),Icon(Icons.thumb_down)],
//            ),
//            body: Container(
//                color: Colors.grey,
//                child: Column(
//                  children: <Widget>[
//                    Image(image:AssetImage('assets/jal.jpg'),),
//                    Text('I Gede Putu Jaladri Prawata',style:TextStyle(color:Colors.white,fontSize:20.0)),
//                    Text('Pendidikan Teknik Informatika',style: TextStyle(color: Colors.indigo, fontSize: 20.0)),
//                  ],
//                )
//            )
//        )
//    )
//  );
//}


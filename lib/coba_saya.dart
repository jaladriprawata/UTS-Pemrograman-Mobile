import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MyzApp());

class MyzApp extends StatefulWidget {
  @override
  _MyzAppState createState() => _MyzAppState();
}

class _MyzAppState extends State<MyzApp> {
  int maju = 0;

  @override
  Widget build(BuildContext context) {
    return(
        new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: new Text("Daftar Zodiac"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/gambar$maju.jpg"),
                ),
                Text(
                  "Zodiac ke -$maju",
                  style: TextStyle(fontFamily: 'Serif', fontSize: 20.0, height: 2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        if(maju > 0) {
                          setState(() {
                            maju = maju -1;
                          });
                        }else{
                          debugPrint("mundur $maju sudah maksimal");
                        }


                        },
                      child: Text("Sebelumnya",
                          style: TextStyle(fontSize: 13.0)),
                    ),
                    FlatButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.redAccent,
                      onPressed: () {
                        if(maju < 11) {
                          setState(() {
                            maju = maju +1;
                          });
                        }else{
                          debugPrint("maju $maju sudah maksimal");
                        }
                        },
                      child: Text("Berikutnya",
                          style: TextStyle(fontSize: 13.0)),
                    )
                  ],
                )
              ],
            )
        ),
      )

    );
  }
}
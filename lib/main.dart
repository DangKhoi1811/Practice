import 'package:flutter/material.dart';
import 'detail_view.dart';
import 'map_view.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
//        appBar: AppBar(
//            title: SafeArea(
//                child: Row(
//                  children: <Widget>[
//                    Text('DANH LAM THẮNG CẢNH HUẾ',style: TextStyle(
//                      fontSize: 15,
//                      fontWeight:FontWeight.w900,
//                    ),),
//                    Icon(Icons.keyboard_arrow_down,
//                      size: 30,)
//                  ],
//                )
//              ),
//          backgroundColor: Colors.purple[400],
//            ),
        body: MapView(),
      ) ;
    }
  }

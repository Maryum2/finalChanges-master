import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


//class Loading extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Loading1(),
//    );
//  }
//
//}
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Loading()));
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/background15.jpg')),
      ),
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.teal,
          size: 50.0,
        ),
      ),
    );
  }
}
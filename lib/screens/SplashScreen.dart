//import 'package:flutter/material.dart';
//import 'dart:async';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: "Splash",
//      home: SplashScreenPage(),
//    );
//  }
//}
import 'package:ajeeb/screens/CustEvent.dart';
//// First screen --- Splash Screen Page
//class SplashScreenPage extends StatefulWidget {
//  @override
//  _SplashScreenPageState createState() => _SplashScreenPageState();
//}
//
//class _SplashScreenPageState extends State<SplashScreenPage> {
//  @override
//  void initState() {
//    super.initState();
//    startSplashScreen();
//  }
//
//  startSplashScreen() async {
//    var duration = const Duration(seconds: 10);
//    return Timer(duration, () {
//      Navigator.of(context).pushReplacement(
//        MaterialPageRoute(builder: (_) {
//          return Splash();
//        }),
//      );
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Color(0xff329cef),
//      body: Center(
//        child: Image.asset(
//          "assets/appIcon.jpg",
//          width: 200.0,
//          height: 100.0,
//        ),
//      ),
//    );
//  }
//}
//// Home Page
//class Splash extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Home Page'),
//      ),
//      body: Center(
//        child: Text("Welcome Parho Likho CS"),
//      ),
//    );
//  }
//}
//class SplashPage extends StatefulWidget {
//  @override
//  _SplashPageState createState() => _SplashPageState();
//}
//
//class _SplashPageState extends State<SplashPage> {
//  @override
//  void initState() {
//    super.initState();
//    startSplashScreen();
//  }
//
//  startSplashScreen() async {
//    var duration = const Duration(seconds: 10);
//    return Timer(duration, () {
//      Navigator.of(context).pushReplacement(
//        MaterialPageRoute(builder: (_) {
//          return HomePage();
//        }),
//      );
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Color(0xff329cef),
//      body: Center(
//        child: Image.asset(
//          "assets/dart.png",
//          width: 200.0,
//          height: 100.0,
//        ),
//      ),
//    );
//  }
//}
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Home Page'),
//      ),
//      body: Center(
//        child: Text("welcome"),
//      ),
//    );
//  }
//}
//
//
//
//
//
//
//



import 'package:flutter/material.dart';
import 'dart:async';



void main() => runApp(MySplash());

class MySplash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash",
      home: SplashScreenPage(),
    );
  }
}
// First screen --- Splash Screen Page
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void completed(){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CustEvent();
    }));
  }

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds :5),completed);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              //color: Colors.amber,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/background15.jpg')),
            ),
            child:Center(

              child: Image.asset('assets/appIcon.jpg'),

            )
        )
    );
  }

}
import 'package:ajeeb/models/eventManager.dart';
import 'package:ajeeb/models/user.dart';
import 'package:ajeeb/screens/CustEvent.dart';
import 'package:ajeeb/screens/Customer/homeCust.dart';
import 'package:ajeeb/screens/EventManager/homeEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';



void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyWelcome()
  ));
}

class MyWelcome extends StatefulWidget {
  @override
  _MyWelcomeState createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {


  @override

  void initState(){
    super.initState();
    _mockCheckForSession().then(
            (status) {

          _navigateToHome();


        });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    return true;

  }


  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => CustEvent()
        )
    );
  }
//  void _navigateToEvent(){
//    Navigator.of(context).pushReplacement(
//        MaterialPageRoute(
//            builder: (BuildContext context) =>HomeEvent()
//        )
//    );
//  }
  void _navigateToCust(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) =>HomeCust()
        )
    );
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:
            SingleChildScrollView(
              child: Container(
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/background15.jpg')),
                  ),
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 550.0,

                          //width: 400.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/bgimg9.jpg'))),
                        ),
//                    new Image.asset("assets/bgimg.jpg"),
                        Container(
                            margin: EdgeInsets.all(50.0),
                            alignment:Alignment.bottomCenter,

                            height: 90.0,
                            //width: 200.0,

                            child:Shimmer.fromColors(
                              period: Duration(milliseconds: 1500),
                              baseColor: Colors.white,
                              highlightColor: Colors.tealAccent,
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                child: Text("PentaEvents",
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontFamily:'Pacifico',
                                      shadows: <Shadow>[
                                        Shadow(
                                            blurRadius: 18.0,
                                            color: Colors.black87,
                                            offset: Offset.fromDirection(120, 12)
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            )
                        ),
                      ]
                  )

              ),
            )
        )
    );
  }
}
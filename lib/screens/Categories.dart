import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MyCategory extends StatefulWidget {
  final DocumentSnapshot document;
  MyCategory(this.document);
  @override
  _MyCategoryState createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  DocumentSnapshot document;



  @override
  Widget build(BuildContext context) {
    final title = 'Categories';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: Text(title),
          leading:IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/background15.jpg')),
                  ),
                  child:new Center(
                    child: widget.document.data['Event_categories'].length==0?

                    Text("No Category",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ):Container(
                      child: new ListView.builder(
                        itemCount:widget.document.data['Event_categories'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Column(
                            children: <Widget>[
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(width: 5.0,),
                                  Text(widget.document.data['Event_categories'][index]),
                                ],
                              ),
                              new Divider(height: 2.0,),
                            ],
                          );
                        },
                      ),
                    ),
                  )
              ),
            ],

          ),
        )
      )
    );
  }

}




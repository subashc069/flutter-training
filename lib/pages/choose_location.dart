import 'dart:developer';

import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init function ran');
  }
  @override
  Widget build(BuildContext context) {
    print('build function ran');

    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            count +=1;          
          });
        },
        child: Text('Counter is $count'),
        ),
    );
  }
}
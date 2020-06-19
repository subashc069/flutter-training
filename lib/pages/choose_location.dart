import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int count = 0;

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return('Yoshi');
    });

    String bio = await Future.delayed(Duration(seconds: 2),(){
      return('vegan, white skinny');
    });

    print('$username - $bio'); 
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
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
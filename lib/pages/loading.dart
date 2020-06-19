import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
   http.Response response = await http.get('http://worldtimeapi.org/api/timezone/Asia/Kathmandu'); 

   Map data = convert.jsonDecode(response.body);
   
   //saving the required values
   String datetime = data['datetime'];
   String offsethour = data['utc_offset'].substring(1,3);
   String offsetminutes = data['utc_offset'].substring(4,6);
   //print(datetime);
   //print(offset);

   //create datetime  object
   DateTime now = DateTime.parse(datetime);
   now = now.add(Duration(hours: int.parse(offsethour)));
   now = now.add(Duration(minutes: int.parse(offsetminutes)));
   print(now);
  }
  @override
  void initState() {
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
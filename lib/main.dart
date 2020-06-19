import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexus/pages/home.dart';
import 'package:nexus/pages/choose_location.dart';
import 'package:nexus/pages/loading.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location': (context) => Location(),
  },
));


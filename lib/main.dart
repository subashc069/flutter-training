import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('first flutter app'),
      centerTitle: true,
    ),
    body: Center(
      child: Text('Hello Nexians'),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('click'),
    ),
  )

));


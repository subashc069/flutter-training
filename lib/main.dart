import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first flutter app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Click me')
            ],
          ),
          Container(
            color: Colors.greenAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('This'),
          ),
          Container(
            color: Colors.blueAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('is the'),
          ),
          Container(
            color: Colors.redAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('This is the beginning'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

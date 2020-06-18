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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset('assets/nature-1.jpg')
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.greenAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('This'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('is the'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.redAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('This is the beginning'),
            ),
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

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              }, 
              icon: Icon(Icons.edit_location), 
              label: Text('Choose a location'))
          ],
        ),
      ),
    );
  }
}
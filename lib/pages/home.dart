import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 160, 0,0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                }, 
                icon: Icon(Icons.edit_location), 
                label: Text('Choose a location'),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data["location"],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2,
                    )
                  ),
                  
                ],
              ),
              SizedBox(height: 20),
              Text(
                data["time"],
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
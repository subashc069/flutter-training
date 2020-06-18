import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaIdCard()
));

class NinjaIdCard extends StatefulWidget {
  @override
  _NinjaIdCardState createState() => _NinjaIdCardState();
}

class _NinjaIdCardState extends State<NinjaIdCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        }
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/nature-1.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800]
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'CHUN LI',
              style: TextStyle(
                color: Colors.amberAccent[400],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[400],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                SizedBox(width: 10.0),
                Text(
                  'bcoolboy8@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[500]
                  ),
                )
              ],
            )
          ],
        ),
        ),
    );
  }
}

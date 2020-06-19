import 'package:flutter/material.dart';
import 'package:nexus/services/worldtime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void initWorldTime() async{
    WorldTime instance = WorldTime(location: 'Kathmandu', flag:'nepal.png', url:'Asia/Kathmandu');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }
  @override
  void initState() {
    super.initState();
    initWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Loading')),
    );
  }
}
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class WorldTime {

  String location; //location for the ui
  String flag; //asset loaction for the Ui
  String url; //api end point for the url
  String time; //current time in the loaction

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try{
      http.Response response = await http.get('http://worldtimeapi.org/api/timezone/$url'); 

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
      time = now.toString();
    }
    catch (e){
      print(e);
      time = 'Time could not be loaded';
    }

    
  }
}
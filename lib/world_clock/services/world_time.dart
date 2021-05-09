import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String flag;
  String uri;
  DateTime? time;

  WorldTime({required this.location, required this.flag, required this.uri});

  initTime() async {
    Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/$uri"));
    Map data = jsonDecode(response.body);
    DateTime now = DateTime.parse(data["utc_datetime"]);
    this.time = now.add(Duration(hours: int.parse(data["utc_offset"].substring(1,3))));
  }

  bool isDayTime() {
    int? h = this.time?.hour;
    return h != null && h > 6 && h < 20;
  }
}

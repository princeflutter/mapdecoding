import 'package:flutter/material.dart';

class MapDecoding2 extends StatefulWidget {
  const MapDecoding2({Key? key}) : super(key: key);

  @override
  State<MapDecoding2> createState() => _MapDecoding2State();
}

class _MapDecoding2State extends State<MapDecoding2> {
  Map map2 = {
    "city": "Chennai",
    "Street": ["adrres1", "address2"]
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Mycreative2 mycreative2 = Mycreative2.fromJson(map2);
   mycreative2.Street[0];
print("===${mycreative2.Street[0]}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Mycreative2 {
  // {
  // "city": "Chennai",
  // "Street": ["adrres1", "address2"]
  // };
  //

  String city;
  List<String> Street;

  Mycreative2(this.city, this.Street);

  factory Mycreative2.fromJson(Map map2) {
    return Mycreative2(map2['city'], map2['Street']);
  }
}

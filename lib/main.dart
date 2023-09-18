import 'package:flutter/material.dart';

import 'MapDecoding2.dart';

void main() {
  runApp(MaterialApp(
    home: MapDecoding2(),
  ));
}

class Map1Decoding extends StatefulWidget {
  const Map1Decoding({Key? key}) : super(key: key);

  @override
  State<Map1Decoding> createState() => _Map1DecodingState();
}

class _Map1DecodingState extends State<Map1Decoding> {
  Map map1 = {"id": "78782554", "name": "Aditi Radadiya", "score": 1000};



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MapCreative mapCreative = MapCreative.FromJson(map1);
    mapCreative.name;
    print("${mapCreative.name}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MapCreative {
  // {"id": "78782554", "name": "Aditi Radadiya", "score": 1000};
  String id;
  String name;
  int score;

  MapCreative(this.id, this.name, this.score);

  factory MapCreative.FromJson(Map map1) {
    return MapCreative(map1['id'], map1['name'], map1['score']);
  }
}

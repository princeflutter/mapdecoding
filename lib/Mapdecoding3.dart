import 'package:flutter/material.dart';

class Mapdecoding3 extends StatefulWidget {
  const Mapdecoding3({Key? key}) : super(key: key);

  @override
  State<Mapdecoding3> createState() => _Mapdecoding3State();
}

class _Mapdecoding3State extends State<Mapdecoding3> {
  Map map3 = {
    "name":true,
    "shape_name": "Rectangle",
    "property": {"status":false,"width": 2.1, "bredth": 2.55}
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Welcome3 welcome3 = Welcome3.fromJson(map3);
    print("===${welcome3.property.bredth}");
    print("==${welcome3.name}");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Welcome3 {
  //
  // {
  // "shape_name": "Rectangle",
  // "property": {"width": 2.1, "bredth": 2.55}
  // };

  String shape_name;
  bool name;
  Property property;

  Welcome3(this.shape_name, this.property,this.name);

  factory Welcome3.fromJson(Map map3) {
    return Welcome3(map3['shape_name'], Property.fromjson(map3['property']),map3['name']);
  }
}

class Property {
  // {"width": 2.1, "bredth": 2.55}
  double width;
  double bredth;
  bool status;

  Property(this.width, this.bredth,this.status);

  factory Property.fromjson(Map propertymap) {
    return Property(propertymap['width'], propertymap['bredth'],propertymap['status']);
  }
}

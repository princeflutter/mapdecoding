import 'package:flutter/material.dart';

class Mapdecofing4 extends StatefulWidget {
  const Mapdecofing4({Key? key}) : super(key: key);

  @override
  State<Mapdecofing4> createState() => _Mapdecofing4State();
}

class _Mapdecofing4State extends State<Mapdecofing4> {
  Map map4 = {
    "id": 1,
    "name": "prductname",
    "images": [
      {
        "id": 11,
        "imagename": "https://play-lh.googleusercontent.com/AwrQb4bJk-34pw_ye7VhjDN0Azraz_pYYq9s5FbcapiF7qfxbYYvqWl-TjIF9xJIeA=s48-rw"
      },
      {
        "id": 15,
        "imagename": "https://play-lh.googleusercontent.com/oFz-KTIgL6yAuuA5XeHapTQLDcoBVgA9JXCTiID70rPcJBGAT9DdiqNDjNLxcYaG6W3W=s48-rw"
      },
      {
        "id": 15655,
        "imagename": "https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM=w240-h480-rw"
      },
      {"id": 15655, "imagename": "img13"},
      {"id": 15655, "imagename": "img19"},
      {"id": 16255, "imagename": "img16"},
      {"id": 16255, "imagename": "img16"},
      {"id": 156565, "imagename": "img333"},
      {"id": 156565, "imagename": "img1333"},
    ]
  };
  Welcom4? welcom4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      welcom4 = Welcom4.fromJson(map4);
    });
    welcom4!.images[0].imagename;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemCount: welcom4!.images.length, itemBuilder: (context, index) {
      return CircleAvatar(radius: 70,backgroundImage: NetworkImage("${welcom4!.images[index].imagename}"),);
    },),);
  }
}

class Welcom4 {
  // {"id": 1,
  // "name": "prductname",
  // "images": [
  // {"id": 11, "imagename": "img1"},
  // {"id": 15, "imagename": "img15"}
  // ]};

  int id;
  String name;
  List<Images> images;

  Welcom4(this.id, this.name, this.images);

  factory Welcom4.fromJson(Map map4) {
    List list = map4['images'];

    List<Images> temp = [];

    for (int i = 0; i < list.length; i++) {
      Images images = Images.fromJson(list[i]);
      temp.add(images);
    }

    return Welcom4(map4['id'], map4['name'], temp);
  }
}

class Images {
  // {"id": 11, "imagename": "img1"},

  int id;
  String imagename;

  Images(this.id, this.imagename);

  factory Images.fromJson(list) {
    return Images(list['id'], list['imagename']);
  }
}

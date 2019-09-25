import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailDesert extends StatelessWidget {
  final String name;
  final String image;
  final String info;

  const DetailDesert({
    Key key,
    this.name,
    this.image,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Desert'),
      ),
      body: Hero(
          tag: 'image',
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.network(
                    image,
                    width: 360,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    name,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      info,
                      style: TextStyle(color: Colors.blueGrey),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
          )),
    );
  }
}

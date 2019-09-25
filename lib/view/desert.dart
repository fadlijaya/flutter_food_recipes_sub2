import 'package:flutter/material.dart';
import '../model/data_desert.dart';
import 'detail_desert.dart';

class Desert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DesertState();
  }
}

class DesertState extends State<Desert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desert'),
      ),
      body: desertView(),
    );
  }
}

class desertView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: DataDesert.name.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(5.0),
        itemBuilder: (BuildContext context, index) => Center(
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
              child: ListTile(
                    title: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child:  Image.network(DataDesert.image[index], width: 350, height: 130, fit: BoxFit.cover,)
                        ),
                        SizedBox(height: 5,),
                        Text(DataDesert.name[index], style: TextStyle(color: Colors.blueGrey),)
                      ],
                    ),
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return DetailDesert(
                          image: DataDesert.image[index],
                          name: DataDesert.name[index],
                          info: DataDesert.info[index],
                        );
                      }));
                  }),
              )));
  }
}

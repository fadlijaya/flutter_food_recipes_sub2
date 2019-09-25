import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import '../model/data_breakfast.dart';
import 'detail_breakfast.dart';

class Breakfast extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BreakfastState();
  }
}

class BreakfastState extends State<Breakfast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast'),
      ),
      body: breakfastView(),
    );
  }
}

class breakfastView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;

    return GridView.builder(
        itemCount: DataBreakfast.name.length,
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
                      child: Image.network(DataBreakfast.image[index], width: 350, height: 130, fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 5,),
                    Text(DataBreakfast.name[index], style: TextStyle(color: Colors.blueGrey),)
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailBreakfast(
                  image: DataBreakfast.image[index],
                  name: DataBreakfast.name[index],
                  info: DataBreakfast.info[index],
                )));
              },
            ),
          ),
        )
    );
  }
}

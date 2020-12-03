import 'package:flutter/material.dart';


void main(){
  runApp(Item());
}
class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<String> imageList = ["images/1.jpg","images/2.jpg",
    "images/3.jpg","images/4.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

          itemCount: imageList.length,
          itemBuilder: (context,index) {

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image(image: AssetImage(imageList[index]),),
                  ),
                ),
              ],
            );
          },
        );


  }
}

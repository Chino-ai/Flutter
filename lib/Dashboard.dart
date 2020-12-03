import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilham_maulana_18111064/item.dart';



class DashBoard extends StatefulWidget {
  final String nama;
  DashBoard({this.nama});
  @override
  _DashBoardState createState() => _DashBoardState(nama: this.nama);
}

class _DashBoardState extends State<DashBoard> {
  final String nama;
  _DashBoardState({this.nama});


  PageController controller = PageController(initialPage: 0);
  List<String> imageList = ["images/1.jpg","images/2.jpg",
    "images/3.jpg","images/4.jpg"
  ];
  ScrollController controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  // profile image
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image(
                            image: AssetImage("images/4.jpg"),fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      SizedBox(width: 15,),
                      Text( "Hi, "+ nama,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),

                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(

                      prefixIcon: Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Cari Karakter",
                      hintStyle: TextStyle(
                        fontSize: 15,

                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    ),
                  ),

                  SizedBox(height: 10,),

                            Expanded(
                              child: ListView.builder(

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
                              ),
                            ),



                ],
              ),
            ),
        );





  }
}

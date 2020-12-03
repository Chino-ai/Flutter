import 'package:flutter/material.dart';
import 'package:ilham_maulana_18111064/Dashboard.dart';





class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
           body: Center(
             child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: Container(
                 padding: EdgeInsets.all(10),
                 width: 300,
                 height: 300,
                 color: Colors.white,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     TextField(
                       controller: text1 ,onChanged: (value){
                         setState(() {

                         });
                     },
                       decoration: InputDecoration(




                         labelText: "Username",
                         hintText: "Masukan Username" ,
                           prefixIcon: Icon(Icons.person),
                           hintStyle: TextStyle(
                             fontSize: 15,

                           ),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                       ),



                     ),
                        TextField(
                          controller: text2 ,onChanged: (value){
                          setState(() {

                          });
                        },
                          decoration: InputDecoration(
                                 labelText: "Password",
                                prefixIcon: Icon(Icons.vpn_key),
                                hintText: "Masukan Password",
                              hintStyle: TextStyle(
                                  fontSize: 15
                              ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),

                            ),



                         ),
                        ),
                     RaisedButton(
                       child: Text("Masuk",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                         color: Colors.orangeAccent,
                         elevation: 5,
                         onPressed: (){
                              if(text1.text == "Ilham" && text2.text == "12345"){
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context) => DashBoard(nama: text1.text,)
                                ));
                              }else{
                                AlertDialog alertDialog = new AlertDialog(

                                    content: new Text("Username Atau Password Salah/Tidak di Isi",
                                    style: TextStyle(fontWeight: FontWeight.w800),
                           ));
                                showDialog(context: context,
                                    child: alertDialog,
                                    barrierDismissible: false);
                              }

                         }
                     )
                   ],
                 ),
               ),
             ),
           ),
    );
  }
}

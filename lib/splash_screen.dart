import 'dart:core';


import 'package:flutter/material.dart';

import 'dart:async';

import 'package:ilham_maulana_18111064/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {


  void initState(){
    super.initState();
    mulaiSpleshScreen();
  }

  mulaiSpleshScreen()async{
         var duration  = const Duration(seconds: 5);
         return Timer(duration,(){
                 Navigator.pushReplacement(context, MaterialPageRoute(
                     builder: (_){
                       return Login();
                     }
                 ));
         });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Material(
                    elevation: 5,
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image(image: AssetImage("images/3.jpg"), fit:BoxFit.cover ,),

                    ),
                  ),
                ),
            SizedBox(height: 15,),
            Text("Waifu Ku",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 150,),

            Align(
              alignment: Alignment.bottomCenter,
                child: Text("Waifu Corporation",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),)
            ),
            Align(
              alignment: Alignment.bottomCenter,
                child: Text("Since 2015",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),)
            ),

          ],
        ),
      ),
    );
  }
}

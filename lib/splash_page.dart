import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realproject/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static final String id = 'splash_page';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer(){
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/logo.png', width: 80, height: 80,),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text('From Amazon', style: TextStyle(color: Colors.black38, fontSize: 17),)
                    ,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

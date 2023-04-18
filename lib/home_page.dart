import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ins demo', style: TextStyle(fontFamily: 'Billabong', fontSize: 18),),
      ),
      body: Center(
        child: Text('Welcome to Insuranse', style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),),
      ),
    );
  }
}

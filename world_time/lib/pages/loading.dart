import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('The Location Screen'),
        backgroundColor: Colors.yellow[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Text('Choose Location Screen'),
    );
  }
}

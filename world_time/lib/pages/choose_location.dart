import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //Implementation of asynchronous
  getData() async {
    //Simulate Network requesting from API or DataBase
    await Future.delayed(
      Duration(seconds: 3),
      () {
        print('Sami Shegga');
      },
    );
    //Simulate Network request (depends on the first)
    await Future.delayed(
      Duration(seconds: 2),
      () {
        print('This is printed state depends on Sami Shegga');
      },
    );
    print('This is non-blocking');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('The Location Screen'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}

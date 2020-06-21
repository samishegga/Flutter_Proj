import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  void initState() {
    super.initState();
    print('This is Initial State');
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('This is Build State');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('The Location Screen'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: FlatButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Text('$counter'),
      ),
    );
  }
}

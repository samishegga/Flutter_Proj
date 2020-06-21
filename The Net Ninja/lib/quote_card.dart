import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes e;
  final Function delete;
  QuoteCard({this.e, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              e.quoteText,
              style: TextStyle(color: Colors.amber[900], fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              e.person,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            FlatButton.icon(
              onPressed: delete,
              icon: Icon(
                Icons.delete,
                size: 40.0,
                color: Colors.red,
              ),
              label: Text(
                'Delete It',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

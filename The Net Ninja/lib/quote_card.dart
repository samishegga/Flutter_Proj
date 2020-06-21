import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes e;
  QuoteCard(this.e);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              e.quoteText,
              style: TextStyle(color: Colors.amber[900], fontSize: 16.0),
            ),
            Text(
              e.person,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

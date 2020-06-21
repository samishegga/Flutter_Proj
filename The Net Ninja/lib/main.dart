import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quotes> quoteList = [
    Quotes('Change the world by being yourself', 'Kadija Sheggar'),
    Quotes('Every moment is a fresh beginning', 'Bakare Ali'),
    Quotes('Die with memories, not dreams', 'Usman Jilo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The deletesure',
          style: TextStyle(letterSpacing: 3.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quoteList
              .map(
                (e) => QuoteCard(
                  e: e,
                  deleteQuote: () {
                    setState(
                      () {
                        quoteList.remove(e);
                      },
                    );
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

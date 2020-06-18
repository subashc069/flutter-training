import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'subash', text: 'As you sow, so you reap'),
    Quote(author: 'manish', text: 'Tit for tat'),
    Quote(author: 'rajnish', text: 'Be yourself because everybody else is taken'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Column(
        children: quotes.map((q) => Text('${q.author} - ${q.text}', style: TextStyle(color: Colors.red[300]),)).toList(),
      ),
    );
  }
}
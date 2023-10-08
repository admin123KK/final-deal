import 'package:finaldeal/quote.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  List<Quote> quotes = [
    Quote(
        author: ' Aakash Karki',
        text: 'Every action has equal and oppostie reaction'),
    Quote(author: ' Aakash Karki', text: 'Life is hard and Luck')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 15, 15, 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            quote.text,
            style: TextStyle(fontFamily: 'Mooli'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            quote.author,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),
        title: const Text(
          'Note Page',
          style: TextStyle(fontFamily: 'Mooli'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

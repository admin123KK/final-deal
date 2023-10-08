import 'package:finaldeal/quote.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  List<Quote> quotes = [
    Quote(author: 'This is Aakash Karki', text: 'Kritan chor desh xoda')
  ];

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
        children: quotes
            .map((quote) => Text('${quote.text} - ${quote.author}'))
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            quote.author,
            style: const TextStyle(
              fontFamily: 'Mooli',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            quote.text,
            style: const TextStyle(
                fontFamily: 'Mooli', fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          onPressed: delete,
          icon: const Icon(Icons.delete),
        ),
      ]),
    );
  }
}

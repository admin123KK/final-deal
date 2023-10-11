
import 'package:flutter/material.dart';
import 'quote_tools.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  List<Quote> quotes = [
    Quote(author: "Nepal is good ", text: "Buddha was born in Nepal"),
    Quote(author: "Nepal is good ", text: "Buddha was born in Nepal")
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  quote.text,
                  style: const TextStyle(
                      fontFamily: "Mooli", fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              quote.author,
              style: const TextStyle(
                  fontFamily: "Moooli", fontWeight: FontWeight.bold),
            ),
        
          Icon(Icons.delete,)
          ],
          
        ),
      
      ),
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 86, 59, 1),
        title: const Text('Quote Page'),
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

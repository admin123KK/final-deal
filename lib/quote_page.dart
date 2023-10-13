import 'package:finaldeal/quote_card.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  List<Quote> quotes = [
    Quote(author: 'Buddha was born In Nepal', text: 'Lord Gautam Buddha'),
    Quote(author: 'Buddha was born In Nepal', text: 'Lord Gautam Buddha')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text(
            'Quote Page',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}

import 'package:finaldeal/quote_tools.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key, required Quote quote});

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
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

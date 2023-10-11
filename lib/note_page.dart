import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);
  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  // List<Quote> quotes = [
  //   Quote(
  //       author: ' Aakash Karki',
  //       text: 'Every action has equal and oppostie reaction'),
  //   Quote(author: ' Aakash Karki', text: 'Life is hard and Luck')
  // ];

  // Widget quoteTemplate(quote) {
  //   return Card(
  //     margin: const EdgeInsets.fromLTRB(16, 15, 15, 16),
  //     child: Padding(
  //       padding: const EdgeInsets.all(12.0),
  //       child:
  //           Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
  //         Text(
  //           quote.text,
  //           style: const TextStyle(fontFamily: 'Mooli'),
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Text(
  //           quote.author,
  //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
  //         )
  //       ]),
  //     ),
  //   );
  // }
  // late Color color;
  // @override
  // void initState() {
  //   super.initState();
  //   color = Theme.of(context).primaryColor;
  // }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Sky Restro & Authentic  Cafe',
                style:
                    TextStyle(fontFamily: 'Mooli', fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Butwal, Nepal',
              style: TextStyle(fontFamily: 'Mooli'),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text(
        '8.1',
        style: TextStyle(
            fontFamily: 'Mooli', letterSpacing: 2, fontWeight: FontWeight.bold),
      ),
    ]),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(10),
    child: const Text(
      'We are happy to welcome in our Sky Restro & Authentic Cafe in our own city'
      'Butwal .We served best of the best with our best quality'
      'We are proud to represents our palpali, newari , and many more'
      'food that represents western side of  Nepali with Many varities',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Skyy Restro and Cafe'),
        centerTitle: true,
        backgroundColor: const Color(0xFF00563B),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1554118811-1e0d58224f24?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2047&q=80',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildButtonColumn(Colors.black, Icons.call, 'CALL'),
              const SizedBox(
                width: 90,
              ),
              _buildButtonColumn(Colors.black, Icons.near_me, 'ROUTE'),
              const SizedBox(
                width: 90,
              ),
              _buildButtonColumn(Colors.black, Icons.share, 'SHARE')
            ],
          ),
          textSection,
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

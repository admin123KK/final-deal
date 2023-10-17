import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LokiPage extends StatefulWidget {
  const LokiPage({Key? key}) : super(key: key);

  @override
  State<LokiPage> createState() => _LokiPageState();
}

class _LokiPageState extends State<LokiPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('M')),
      body: const Center(
          child: SpinKitThreeBounce(
        color: Colors.blue,
      ))
    );
  }
}

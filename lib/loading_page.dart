import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void getData() async {
    Uri url = Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kathmandu');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data);
  }
  

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loadaing Page'),
        centerTitle: true,
      ),
      body: Text('Loading Screen '),
    );
  }
}

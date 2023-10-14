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
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data['title']);
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

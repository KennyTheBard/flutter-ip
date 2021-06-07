import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ip/models/ip.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "What's my IP?",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "What's my IP?"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ip = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (ip.isNotEmpty) ...<Widget>[
              const Text('Your IP address is:'),
              Text(ip, style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              TextButton(
                  onPressed: () {
                    setState(() {
                      ip = '';
                    });
                  },
                  style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue),
                  child: const Text('Back'))
            ],
            if (ip.isEmpty && isLoading) const Text('Loading...'),
            if (ip.isEmpty && !isLoading)
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLoading = true;
                      getIp();
                    });
                  },
                  style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue),
                  child: const Text('Find my IP')),
          ],
        ),
      ),
    );
  }

  Future<void> getIp() async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.ipify.org',
      queryParameters: <String, dynamic>{'format': 'json'},
    );

    final Response response = await get(url);
    final Ip body = Ip.fromJson(jsonDecode(response.body) as Map<String, dynamic>);

    setState(() {
      ip = body.ip;
      isLoading = false;
    });
  }
}

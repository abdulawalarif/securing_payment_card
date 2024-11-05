import 'package:flutter/material.dart';
import 'card_open.dart';
import 'card_secured.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Securing Payment'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.lock),
                text: 'Secured Card',
              ),
              Tab(
                icon: Icon(Icons.lock_open),
                text: 'Card Is open',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CardSecured(),
            CardOpen(),
          ],
        ),
      ),
    );
  }
}


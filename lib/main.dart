import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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


class CardSecured extends HookWidget {
  const CardSecured({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useAppLifecycleState();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: state == AppLifecycleState.resumed ? 1.0 : 0.0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black.withAlpha(100),
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset('assets/image_of_card.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardOpen extends StatelessWidget {
  const CardOpen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withAlpha(100),
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Image.asset('assets/image_of_card.png'),
            ),
          ],
        ),
      ),
    );
  }
}
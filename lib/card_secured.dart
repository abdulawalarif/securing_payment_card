import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


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

import 'package:flutter/material.dart';

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
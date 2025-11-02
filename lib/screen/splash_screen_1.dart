import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF00008B),
                image: const DecorationImage(
                  image: AssetImage("assets/images/splash1.jpg"),
                  fit: BoxFit.cover,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

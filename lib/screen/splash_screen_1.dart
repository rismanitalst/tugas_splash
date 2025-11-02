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
            const SizedBox(height: 28),
            const Text(
            "Hey there 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
            "No wallet? No worries.\nLet's make it digital 💳",
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
            //* bagian indikator
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF00008B),
                  ),
                ),
            const SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD9D9D9),
                  ),  
                ),
            const SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD9D9D9),
                  ),
                ),
              ],
            ),
            //bagian button lanjutan
            const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 42,
                  width: double.infinity,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/splash2');
                },  
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00008B),
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                 "Continue",
                 style: TextStyle(fontSize: 15, color: Colors.white),
       ),
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}

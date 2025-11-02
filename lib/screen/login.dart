import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),

              // Icon biru dengan ikon kunci
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFF00008B),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                  size: 50,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Welcome  ",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Silakan login untuk melanjutkan",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueGrey,
                ),
              ),

              const SizedBox(height: 40),

              //TextField Input Email
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Masukkan email Anda',
                prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF00008B)),
                filled: true,
                fillColor: const Color(0xFFF6F6F6),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                    color: Color(0xFF00008B), // biru tua pas fokus
                    width: 2,
                    ),
                  ),
                ),
              ),
                const SizedBox(height: 20),
              //TextField Input Password
                TextField(
                obscureText: true,
                decoration: InputDecoration(
                 labelText: 'Password',
                 hintText: 'Masukkan password Anda',
                 prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF00008B)),
                 filled: true,
                  fillColor: const Color(0xFFF6F6F6),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                    color: Color(0xFF00008B),
                    width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),
                //Tambahkan tombol Lupa Password
                  Align(
                   alignment: Alignment.centerRight, 
                        child: TextButton(
                        onPressed: () {},
                        child: Text(
                        'Lupa Password?',
                        style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
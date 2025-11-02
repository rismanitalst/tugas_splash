import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(), // biar scroll halus di desktop & mobile
        child: Container(
          padding: const EdgeInsets.all(20.0),
      child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 80),
                // Icon kunci biru
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

                // Teks sambutan
                const Text(
                  "Hey! Hey! Welcome to Obli-wallet ",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Log in to your account to continue your journey.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),

                const SizedBox(height: 40),

                // TextField Input Email
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
                        color: Color(0xFF00008B), 
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // TextField Input Password
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

                // Tambahkan tombol Lupa Password
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

                const SizedBox(height: 20),

                // Tombol Login
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Login berhasil! 🔐",
                            textAlign: TextAlign.center,
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00008B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 4,
                      shadowColor: Colors.blueAccent,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                //teks "atau"
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      "atau",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                        indent: 10,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                //Tombol Login dengan Google
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.g_mobiledata,
                    color: Colors.black,
                    size: 28,
                  ),
                  label: const Text(
                    'Login dengan Google',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: const BorderSide(
                      color: Color(0xFFE0E0E0),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Footer bawah
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account? ",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create one",
                        style: TextStyle(
                          color: Color(0xFF00008B),
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
       ),
      ),
    );
  }
}

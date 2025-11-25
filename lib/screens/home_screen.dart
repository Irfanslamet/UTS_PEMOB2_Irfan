import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HealthWave"), centerTitle: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back! 👋",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Pilih layanan yang kamu butuhkan:",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            // === MENU 1: INFORMASI KESEHATAN ===
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/info');
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.favorite, size: 40, color: Colors.blue),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "Daftar Informasi Kesehatan",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // === MENU 2: TANYA AI GEMINI ===
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ai');
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.smart_toy, size: 40, color: Colors.green),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text("Tanya AI", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // === MENU 3: ABOUT APP ===
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.info_outline, size: 40, color: Colors.orange),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "About Aplikasi",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // === MENU 4: LOGOUT ===
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.logout, size: 40, color: Colors.red),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text("Logout", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

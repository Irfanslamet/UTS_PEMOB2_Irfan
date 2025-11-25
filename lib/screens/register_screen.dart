import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title: const Text("Register")),

      body: Padding(
        padding: const EdgeInsets.all(24.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Buat Akun Baru",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // INPUT NAMA -------------------------
              TextField(
                controller: nameC,
                decoration: const InputDecoration(
                  label: Text("Nama Lengkap"),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // INPUT EMAIL ------------------------
              TextField(
                controller: emailC,
                decoration: const InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              // INPUT PASSWORD ---------------------
              TextField(
                controller: passC,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 25),

              // TOMBOL REGISTER --------------------
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (nameC.text.isEmpty ||
                        emailC.text.isEmpty ||
                        passC.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Semua field harus diisi"),
                        ),
                      );
                      return;
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Registrasi berhasil, silakan login"),
                      ),
                    );

                    Navigator.pop(context);
                  },
                  child: const Text("REGISTER"),
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Sudah punya akun? Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HealthListScreen extends StatelessWidget {
  const HealthListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> healthData = [
      {
        "title": "Manfaat Air Putih",
        "desc":
            "Air membantu metabolisme, menjaga suhu tubuh, dan mencegah dehidrasi.",
      },
      {
        "title": "Pentingnya Tidur 7–8 Jam",
        "desc":
            "Tidur cukup meningkatkan fokus, imun tubuh, dan memperbaiki sel.",
      },
      {
        "title": "Bahaya Rokok",
        "desc":
            "Rokok merusak paru-paru, jantung, dan meningkatkan risiko kanker.",
      },
      {
        "title": "Tips Pola Makan Sehat",
        "desc": "Konsumsi sayuran, buah, protein, dan kurangi gula berlebih.",
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Informasi Kesehatan")),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: healthData.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            child: ListTile(
              contentPadding: const EdgeInsets.all(16),

              title: Text(
                healthData[index]["title"]!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  healthData[index]["desc"]!,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

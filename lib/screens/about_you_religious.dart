import 'package:flutter/material.dart';
import 'about_you_education.dart';

class AboutYouReligiousScreen extends StatefulWidget {
  const AboutYouReligiousScreen({super.key});

  @override
  State<AboutYouReligiousScreen> createState() =>
      _AboutYouReligiousScreenState();
}

class _AboutYouReligiousScreenState extends State<AboutYouReligiousScreen> {
  String? selectedReligiousPractice;
  String? selectedPrayerLevel;
  String? selectedMadhab;

  final List<String> religiousPracticeOptions = [
    "Very practicing",
    "Moderately Practicing",
    "Somewhat practicing",
    "Not very practising",
    "Cultural connection only",
  ];

  final List<String> prayerOptions = [
    "Five times daily",
    "Most prayers daily",
    "Friday prayers only",
    "Occasionally",
    "Rarely/Never",
  ];

  final List<String> madhabOptions = [
    "Hanafi",
    "Shafi'i",
    "Maliki",
    "Hanbali",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Religious Background',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Tell us about your religious practices to help find compatible matches.*",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "How Religious Are You?*",
              ),
              items: religiousPracticeOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) =>
                  setState(() => selectedReligiousPractice = value),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Prayer Level?*"),
              items: prayerOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) => setState(() => selectedPrayerLevel = value),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Madhab/School of thoughts",
              ),
              items: madhabOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) => setState(() => selectedMadhab = value),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.withAlpha((255 * 0.3).toInt()),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutYouEducationScreen(),
                  ),
                );
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}

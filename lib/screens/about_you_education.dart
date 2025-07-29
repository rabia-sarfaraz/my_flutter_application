import 'package:flutter/material.dart';
import 'marriage_family_screen.dart';

class AboutYouEducationScreen extends StatefulWidget {
  const AboutYouEducationScreen({super.key});

  @override
  State<AboutYouEducationScreen> createState() =>
      _AboutYouEducationScreenState();
}

class _AboutYouEducationScreenState extends State<AboutYouEducationScreen> {
  String? selectedEducation;
  String? selectedEthnicity;
  final TextEditingController professionController = TextEditingController();
  final List<String> educationLevels = [
    "High School",
    "Bachelor",
    "Master",
    "PhD",
  ];
  final List<String> ethnicities = ["Asian", "Arab", "African", "Western"];
  final Map<String, bool> languages = {
    'Arabic': false,
    'Urdu': false,
    'Turkish': false,
    'Spanish': false,
    'English': false,
    'French': false,
    'Farsi': false,
    'Bengali': false,
  };

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
          'Education & Career',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Tell us about your educational background and professional life.*",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Education Level"),
              items: educationLevels.map((String level) {
                return DropdownMenuItem<String>(
                  value: level,
                  child: Text(level),
                );
              }).toList(),
              onChanged: (value) => setState(() => selectedEducation = value),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: professionController,
              decoration: const InputDecoration(labelText: "Profession"),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Ethnicity"),
              items: ethnicities.map((String e) {
                return DropdownMenuItem<String>(value: e, child: Text(e));
              }).toList(),
              onChanged: (value) => setState(() => selectedEthnicity = value),
            ),
            const SizedBox(height: 16),
            const Text("Languages you know"),
            const SizedBox(height: 8),
            Wrap(
              spacing: 10,
              children: languages.keys.map((lang) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: languages[lang],
                      onChanged: (bool? value) {
                        setState(() {
                          languages[lang] = value ?? false;
                        });
                      },
                    ),
                    Text(lang),
                  ],
                );
              }).toList(),
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
                // ✅ Navigate to MarriageFamilyScreen:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MarriageFamilyScreen(),
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

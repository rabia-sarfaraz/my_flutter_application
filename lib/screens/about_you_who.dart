import 'package:flutter/material.dart';
import 'about_you_screen.dart';

class AboutYouWhoScreen extends StatefulWidget {
  const AboutYouWhoScreen({super.key});

  @override
  State<AboutYouWhoScreen> createState() => _AboutYouWhoScreenState();
}

class _AboutYouWhoScreenState extends State<AboutYouWhoScreen> {
  String selectedProfile = 'myself';
  String? selectedCity;

  Widget buildProfileOption({
    required String value,
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    final isSelected = selectedProfile == value;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedProfile = value;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.brown : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? const Color(0xFFF4EDE5) : Colors.white,
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.brown),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.brown : Colors.black,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cities = ['Karachi', 'Lahore', 'Islamabad'];

    return Scaffold(
      backgroundColor: const Color(0xFFFCF9F6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Welcome to Nikah Plus',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 12),
              const Text(
                'Let’s create your profile to find your perfect match. This will take about 5 - 7 minutes.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 24),
              const Text(
                'I am creating an account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 12),
              buildProfileOption(
                value: 'myself',
                title: 'For Myself',
                subtitle: 'I am looking for a spouse',
                icon: Icons.person,
              ),
              buildProfileOption(
                value: 'wali',
                title: 'As a Wali/Guardian',
                subtitle: 'What’s your gender?',
                icon: Icons.group,
              ),
              buildProfileOption(
                value: 'mother',
                title: 'As a Mother',
                subtitle: 'What’s your gender?',
                icon: Icons.lock,
              ),
              const SizedBox(height: 24),
              const Text(
                'Where do you live?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: selectedCity,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                hint: const Text('City, Country*'),
                items: cities
                    .map(
                      (city) => DropdownMenuItem<String>(
                        value: city,
                        child: Text(city),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() => selectedCity = value);
                },
              ),
              const SizedBox(height: 36),
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/about_you');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutYouScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

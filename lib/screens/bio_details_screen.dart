import 'package:flutter/material.dart';
import 'interests_and_personality_screen.dart';

class BioDetailsScreen extends StatefulWidget {
  const BioDetailsScreen({super.key});

  @override
  State<BioDetailsScreen> createState() => _BioDetailsScreenState();
}

class _BioDetailsScreenState extends State<BioDetailsScreen> {
  final TextEditingController _bioController = TextEditingController(
    text:
        "Amina, 29. Practicing Muslimah seeking a like minded partner for a blessed journey. I am passionate about my faith, family, and finding joy in the simple things. Whether it’s a quiet evening in or an adventure outdoors, I value connection and sincerity. Looking for a respectful, faith driven individual to share life’s blessings with.",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFBF7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Tell Us More About Yourself',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),

              // Bio label
              const Text(
                'Add your Bio',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              // Bio TextField
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.brown.shade200),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _bioController,
                      maxLines: 6,
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration.collapsed(
                        hintText:
                            'Tell us about yourself, your hobbies and future plans…..',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: OutlinedButton(
                        onPressed: () {
                          // Rephrase action here
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          side: BorderSide(color: Colors.brown.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          '↻  AI Rephrase',
                          style: TextStyle(fontSize: 12, color: Colors.brown),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Enhance Bio button
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    // Enhance with AI action
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.brown),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text(
                    'Use AI to Enhance your Bio',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ),

              const Spacer(),

              // Next Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const InterestsAndPersonalityScreen(),
                      ),
                    ); // Navigate to next screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16, color: Colors.white),
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

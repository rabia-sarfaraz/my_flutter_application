import 'package:flutter/material.dart';
import 'voice_video_introduction_screen.dart';

class InterestsPersonalityScreen extends StatefulWidget {
  const InterestsPersonalityScreen({super.key});

  @override
  State<InterestsPersonalityScreen> createState() =>
      _InterestsPersonalityScreenState();
}

class _InterestsPersonalityScreenState
    extends State<InterestsPersonalityScreen> {
  final Map<String, bool> interests = {
    'Reading': false,
    'Cooking': false,
    'Art': false,
    'Nature': false,
    'Volunteering': false,
    'Fitness': false,
    'Writing': false,
    'Family Activities': false,
    'Traveling': false,
    'Sports': false,
    'Music': false,
    'Technology': false,
    'Islamic Studies': false,
    'Photography': false,
    'Business': false,
    'Gym': false,
  };

  final Map<String, bool> personalityTraits = {
    'Kind': false,
    'Ambitious': false,
    'Creative': false,
    'Outgoing': false,
    'Adventurous': false,
    'Humorous': false,
    'Spiritual': false,
    'Patient': false,
    'Organized': false,
    'Analytical': false,
    'Reserved': false,
    'Traditional': false,
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
          'Interests & Personality',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tell us about yourself to help find compatible matches.*",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              "Select your interests (choose up to 5)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 0,
              children: interests.keys.map((interest) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  child: CheckboxListTile(
                    value: interests[interest],
                    onChanged: (val) {
                      if (val == true && _selectedCount(interests) >= 5) {
                        return;
                      }
                      setState(() {
                        interests[interest] = val ?? false;
                      });
                    },
                    title: Text(interest),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            const Text(
              "Select your traits (choose up to 5)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 0,
              children: personalityTraits.keys.map((trait) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 30,
                  child: CheckboxListTile(
                    value: personalityTraits[trait],
                    onChanged: (val) {
                      if (val == true &&
                          _selectedCount(personalityTraits) >= 5) {
                        return;
                      }
                      setState(() {
                        personalityTraits[trait] = val ?? false;
                      });
                    },
                    title: Text(trait),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                  ),
                );
              }).toList(),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // ✅ Ye hai navigation to Voice & Video Introduction Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const VoiceVideoIntroductionScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAD825F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _selectedCount(Map<String, bool> map) {
    return map.values.where((v) => v).length;
  }
}

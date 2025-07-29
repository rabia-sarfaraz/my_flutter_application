import 'package:flutter/material.dart';
import 'interests_personality_screen.dart';

class MarriageFamilyScreen extends StatefulWidget {
  const MarriageFamilyScreen({super.key});

  @override
  State<MarriageFamilyScreen> createState() => _MarriageFamilyScreenState();
}

class _MarriageFamilyScreenState extends State<MarriageFamilyScreen> {
  String maritalStatus = 'Never Married';
  bool? haveChildren;
  bool? wantChildren;
  bool? willingToRelocate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCFAF7),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.brown),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Marriage & Family',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tell us about your marital status and family plans.*',
              style: TextStyle(
                fontSize: 14,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Marital status',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _choiceChip('Never Married'),
                const SizedBox(width: 8),
                _choiceChip('Divorced'),
                const SizedBox(width: 8),
                _choiceChip('Widowed'),
              ],
            ),
            const SizedBox(height: 24),
            _questionRow(
              'Do you have children?',
              haveChildren,
              (val) => setState(() => haveChildren = val),
            ),
            const SizedBox(height: 16),
            _questionRow(
              'Do you want children in the future?',
              wantChildren,
              (val) => setState(() => wantChildren = val),
            ),
            const SizedBox(height: 16),
            _questionRow(
              'Are you willing to relocate for marriage?',
              willingToRelocate,
              (val) => setState(() => willingToRelocate = val),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // ✅ Navigate to Interests & Personality screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InterestsPersonalityScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAD825F),
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _choiceChip(String label) {
    return ChoiceChip(
      label: Text(label),
      selected: maritalStatus == label,
      selectedColor: const Color(0xFFD8C1A5),
      onSelected: (_) {
        setState(() {
          maritalStatus = label;
        });
      },
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.brown),
      ),
      labelStyle: TextStyle(
        color: maritalStatus == label ? Colors.brown : Colors.brown,
      ),
    );
  }

  Widget _questionRow(
      String question, bool? value, ValueChanged<bool> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            _yesNoButton('Yes', value == true, () => onChanged(true)),
            const SizedBox(width: 16),
            _yesNoButton('No', value == false, () => onChanged(false)),
          ],
        ),
      ],
    );
  }

  Widget _yesNoButton(String text, bool selected, VoidCallback onPressed) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: selected ? const Color(0xFFD8C1A5) : Colors.white,
          side: const BorderSide(color: Colors.brown),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.brown),
        ),
      ),
    );
  }
}

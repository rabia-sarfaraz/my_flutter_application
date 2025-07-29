import 'package:flutter/material.dart';
import 'home_screen.dart';

class InterestsAndPersonalityScreen extends StatefulWidget {
  const InterestsAndPersonalityScreen({super.key});

  @override
  State<InterestsAndPersonalityScreen> createState() =>
      _InterestsPersonalityScreenState();
}

class _InterestsPersonalityScreenState
    extends State<InterestsAndPersonalityScreen> {
  double _startAge = 29;
  double _endAge = 36;

  final Map<String, bool> ethnicityPreferences = {
    'Arab': false,
    'African': false,
    'Turkish': false,
    'European': false,
    'Any': false,
    'South Asian': false,
    'Southeast Asian': false,
    'Persian/Iranian': false,
    'North American': false,
  };

  String selectedLocation = 'Anywhere in the world';
  String selectedEducation = 'No preference';

  final List<String> locations = [
    'Anywhere in the world',
    'Same country',
    'Same city',
  ];

  final List<String> educationLevels = [
    'No preference',
    'High School',
    'Bachelors',
    'Masters',
    'PhD',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Interests & Personality',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tell us what you're looking for in a potential spouse.*",
                style: TextStyle(fontSize: 16, color: Colors.brown),
              ),
              const SizedBox(height: 24),
              const Text(
                "Age range",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${_startAge.toInt()} years'),
                  Text('${_endAge.toInt()} years'),
                ],
              ),
              RangeSlider(
                values: RangeValues(_startAge, _endAge),
                min: 18,
                max: 60,
                divisions: 42,
                onChanged: (RangeValues values) {
                  setState(() {
                    _startAge = values.start;
                    _endAge = values.end;
                  });
                },
                activeColor: Colors.brown,
                inactiveColor: Colors.brown.shade100,
              ),
              const SizedBox(height: 16),
              const Text(
                "Ethnicity Preferences",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Wrap(
                spacing: 12,
                runSpacing: 0,
                children: ethnicityPreferences.keys.map((ethnicity) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 36,
                    child: CheckboxListTile(
                      value: ethnicityPreferences[ethnicity],
                      title: Text(ethnicity),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      activeColor: Colors.brown,
                      onChanged: (val) {
                        setState(() {
                          ethnicityPreferences[ethnicity] = val!;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              const Text(
                "Location Preference",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                value: selectedLocation,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: locations.map((String location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectedLocation = val!;
                  });
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Minimum Education Level",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                value: selectedEducation,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: educationLevels.map((String level) {
                  return DropdownMenuItem<String>(
                    value: level,
                    child: Text(level),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectedEducation = val!;
                  });
                },
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                    // Action on Find Matches button
                  },
                  child: const Text(
                    'Find Matches',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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

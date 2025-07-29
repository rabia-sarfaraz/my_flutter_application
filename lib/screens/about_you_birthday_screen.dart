import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about_you_picture_screen.dart';

class AboutYouBirthdayScreen extends StatefulWidget {
  const AboutYouBirthdayScreen({super.key});

  @override
  State<AboutYouBirthdayScreen> createState() => _AboutYouBirthdayScreenState();
}

class _AboutYouBirthdayScreenState extends State<AboutYouBirthdayScreen> {
  int selectedDay = 1;
  int selectedMonth = 0; // 0 = January
  int selectedYear = 1990;

  final List<String> months = const [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  List<int> days = List.generate(31, (index) => index + 1);
  List<int> years = List.generate(60, (index) => 1965 + index);

  int getAge() {
    final today = DateTime.now();
    final birthday = DateTime(selectedYear, selectedMonth + 1, selectedDay);
    int age = today.year - birthday.year;
    if (today.month < birthday.month ||
        (today.month == birthday.month && today.day < birthday.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F5F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F5F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Tell Us More About Yourself',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            'Add Your Birthdate*',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 40,
              scrollController: FixedExtentScrollController(
                initialItem: selectedDay - 1,
              ),
              onSelectedItemChanged: (index) {
                setState(() => selectedDay = days[index]);
              },
              children: days.map((day) => Center(child: Text('$day'))).toList(),
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 40,
              scrollController: FixedExtentScrollController(
                initialItem: selectedMonth,
              ),
              onSelectedItemChanged: (index) {
                setState(() => selectedMonth = index);
              },
              children: months
                  .map((month) => Center(child: Text(month)))
                  .toList(),
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 40,
              scrollController: FixedExtentScrollController(
                initialItem: selectedYear - 1965,
              ),
              onSelectedItemChanged: (index) {
                setState(() => selectedYear = years[index]);
              },
              children: years
                  .map((year) => Center(child: Text('$year')))
                  .toList(),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'You are ${getAge()} years old',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC4A484),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutYouPictureScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

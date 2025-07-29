import 'package:flutter/material.dart';
import 'bio_input_screen.dart';

class VideoIntroductionScreen extends StatefulWidget {
  const VideoIntroductionScreen({super.key});

  @override
  State<VideoIntroductionScreen> createState() =>
      _VideoIntroductionScreenState();
}

class _VideoIntroductionScreenState extends State<VideoIntroductionScreen> {
  String? selectedPrompt;
  final List<String> prompts = [
    'Tell us about yourself',
    'What are you looking for?',
    'What makes you unique?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back arrow
              const Icon(Icons.arrow_back, size: 24),
              const SizedBox(height: 20),

              // Title
              const Text(
                'Video Introduction',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Subtitle
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'A short video helps build trust and shows your authentic self.',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFD5F2EC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Optional',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Dropdown
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Color(0xFFFDF8F4),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  value: selectedPrompt,
                  hint: const Text('Select a prompt'),
                  items: prompts.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedPrompt = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Video Placeholder
              Container(
                height: 140,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4EFEA),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.videocam, size: 28, color: Colors.black54),
                      SizedBox(width: 8),
                      Text(
                        'Your video will appear here',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Record Button
              Center(
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Record video action
                  },
                  icon: const Icon(Icons.videocam),
                  label: const Text('Record Video Intro'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 14),
                    side: const BorderSide(color: Colors.brown),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Why Add Voice/Video
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFD5F2EC),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info_outline, size: 18, color: Colors.teal),
                        SizedBox(width: 6),
                        Text(
                          'Why add a voice or video intro?',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('• Builds trust and emotional connection'),
                    Text('• Shows your authentic personality'),
                    Text('• Profiles with intros receive 3x more matches'),
                    Text('• Helps potential matches feel more comfortable'),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Skip & Next
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BioInputScreen(),
                          ),
                        );
                      },
                      child: const Text('Skip'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.brown,
                        side: const BorderSide(color: Colors.brown),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BioInputScreen(),
                          ),
                        );
                      },
                      child: const Text('Next'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

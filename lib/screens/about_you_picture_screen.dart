import 'package:flutter/material.dart';
import 'about_you_religious.dart';

class AboutYouPictureScreen extends StatefulWidget {
  const AboutYouPictureScreen({super.key});

  @override
  State<AboutYouPictureScreen> createState() => _AboutYouPictureScreenState();
}

class _AboutYouPictureScreenState extends State<AboutYouPictureScreen> {
  List<String?> selectedImages = List.generate(9, (index) => null);

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
          'Upload Photos',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Add photos to your profile. Your main photo will be visible to all users, while additional photos can be unlocked by matches.*",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {}, // TODO: implement image picker
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: selectedImages[index] == null
                        ? const Icon(Icons.add_a_photo, color: Colors.grey)
                        : Image.network(selectedImages[index]!,
                            fit: BoxFit.cover),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFE6F4F1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "📸 Photo Guidelines",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text("• Photos should be modest and respectful"),
                  Text("• Clear face visibility in main photo"),
                  Text("• No group photos as main photo"),
                  Text("• Additional photos can show hobbies and interests"),
                ],
              ),
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
                    builder: (context) => const AboutYouReligiousScreen(),
                  ),
                );
              },
              child: const Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}

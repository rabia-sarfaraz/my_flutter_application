import 'package:flutter/material.dart';
import 'nikah_navigator3_screen.dart';

class NikahNavigator2Screen extends StatelessWidget {
  const NikahNavigator2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Heading
              const Center(
                child: Text(
                  'Nikah Navigator',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // First Image
              Image.asset('assets/images/input.png'),

              const SizedBox(height: 10),

              // Second Image
              Image.asset('assets/images/cardS.png'),

              const SizedBox(height: 20),

              // Tabs Row with Navigator
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NikahNavigator3Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        const Text(
                          'AI Recommendations',
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          height: 2,
                          width: 100,
                          color: Colors.brown,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NikahNavigator3Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Recently Viewed',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NikahNavigator3Screen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Saved Profiles',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Images to paste
              Image.asset('assets/images/26.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/27.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/28.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/29.png'),

              const SizedBox(height: 20),

              // Search History Heading
              const Text(
                'Your Search History',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // Images for Search History
              Image.asset('assets/images/30.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/31.png'),

              const SizedBox(height: 10),

              // Grid Section Heading
              const Text(
                'Enhance Your Search Experience',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 20),

              // Grid UI
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  buildGridItem('assets/images/1.png', 'Ask the Mufti'),
                  buildGridItem('assets/images/2.png', 'Family Panel'),
                  buildGridItem('assets/images/3.png', 'Mahr Calculator'),
                  buildGridItem('assets/images/4.png', 'Firasa Insights'),
                  buildGridItem('assets/images/5.png', 'Emotional Journey'),
                  buildGridItem('assets/images/6.png', 'AI Companion'),
                ],
              ),

              const SizedBox(height: 80), // Space for button
            ],
          ),
        ),
      ),

      // Bottom Button with Navigator
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown.shade300,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NikahNavigator3Screen(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/box.png', height: 24),
              Image.asset('assets/images/box1.png', height: 24),
              Image.asset('assets/images/box2.png', height: 24),
              Image.asset('assets/images/box3.png', height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String iconPath, String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown.shade50,
            radius: 24,
            child: Image.asset(
              iconPath,
              height: 24,
              width: 24,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }
}

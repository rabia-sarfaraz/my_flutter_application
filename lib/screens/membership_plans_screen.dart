import 'package:flutter/material.dart';
import 'discover_matches_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MembershipPlansScreen(),
  ));
}

class MembershipPlansScreen extends StatelessWidget {
  const MembershipPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const brown = Color(0xFF8B5E3C);
    const lightBrown = Color(0xFFD4B89B);
    const green = Color(0xFF2E7D32);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Membership Plans',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Upgrade Your Journey to Love\nChoose the plan that best fits your needs and unlock premium features to find your perfect match.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Billing Period',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Monthly',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.grey),
                          backgroundColor: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('3 Months',
                                style: TextStyle(color: Colors.black)),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Save 17%',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Yearly',
                                style: TextStyle(color: Colors.black)),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Save 37%',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildPlanCard(
                context,
                title: 'Free',
                subtitle: 'Basic features to get started',
                subtitleRight: true,
                price: '\$0',
                trailing: '/forever',
                buttonColor: lightBrown,
                buttonText: 'Select Plan',
                features: const [
                  'Create a profile',
                  'Browse profiles',
                  'Elites of day',
                  'Basic matching algorithm',
                  'Unlimited likes',
                  'Advanced filters',
                ],
                tickColor: brown,
                tickInside: Colors.white,
                textColor: brown,
                buttonTextColor: Colors.white,
                isCurrent: false,
              ),
              const SizedBox(height: 16),
              Stack(
                children: [
                  buildPlanCard(
                    context,
                    title: 'Silver',
                    subtitle: 'Enhanced features for serious seekers',
                    subtitleRight: true,
                    price: '\$19.99',
                    trailing: '/month',
                    buttonColor: lightBrown,
                    buttonText: 'Your Current Plan',
                    features: const [
                      'All Free features',
                      'Unlimited chats',
                      '1 profile boost per month',
                      'See who likes you',
                      'Basic firasa insights',
                      'Advanced AI matching',
                    ],
                    tickColor: brown,
                    tickInside: Colors.white,
                    textColor: brown,
                    buttonTextColor: Colors.white,
                    isCurrent: true,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: const BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'MOST POPULAR',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              buildPlanCard(
                context,
                title: 'Gold',
                subtitle: 'Enhanced features for serious seekers',
                subtitleRight: true,
                price: '\$39.99',
                trailing: '/month',
                buttonColor: lightBrown,
                buttonText: 'Your Current Plan',
                features: const [
                  'All Silver features',
                  'Priority in search results',
                  'Full Firasa personality analysis',
                  'Priority customer support',
                  'Access to all profile photos',
                  '4 profile boosts per month',
                  'Premium badge on profile',
                ],
                tickColor: brown,
                tickInside: Colors.white,
                textColor: brown,
                buttonTextColor: Colors.white,
                isCurrent: true,
              ),
              const SizedBox(height: 20),
              const Text(
                'Feature Comparison',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.grey.shade300),
                ),
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                },
                children: [
                  buildTableRow('Feature', 'Free', 'Silver', 'Gold',
                      isHeader: true),
                  buildTableRow('Profile Creation', '✓', '✓', '✓'),
                  buildTableRow('Daily Likes', '5', 'Unlimited', 'Unlimited'),
                  buildTableRow('See Who Likes You', '✕', '✓', '✓'),
                  buildTableRow('Advanced Filters', '✕', '✓', '✓'),
                  buildTableRow('Profile Boosts', '✕', '1/mo', '4/mo'),
                  buildTableRow('Firasa Insights', 'Basic', 'Basic', 'Full'),
                  buildTableRow('AI Matching', 'Basic', 'Standard', 'Advanced'),
                  buildTableRow('Access to All Photos', '✕', '✕', '✓'),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DiscoverMatchesScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightBrown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/box.png', height: 20),
                      Image.asset('assets/images/box1.png', height: 20),
                      Image.asset('assets/images/box2.png', height: 20),
                      Image.asset('assets/images/box3.png', height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow buildTableRow(
      String feature, String free, String silver, String gold,
      {bool isHeader = false}) {
    return TableRow(
      decoration: BoxDecoration(
        color: isHeader
            ? Colors.lightBlue.shade50.withOpacity(0.2)
            : Colors.transparent,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(feature,
              style: TextStyle(
                  fontWeight: isHeader ? FontWeight.bold : FontWeight.normal)),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(free, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(silver, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(gold, textAlign: TextAlign.center),
        ),
      ],
    );
  }

  Widget buildPlanCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required bool subtitleRight,
    required String price,
    required String trailing,
    required Color buttonColor,
    required String buttonText,
    required List<String> features,
    required Color tickColor,
    required Color tickInside,
    required Color textColor,
    required Color buttonTextColor,
    required bool isCurrent,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              const Spacer(),
              Text(subtitle, style: const TextStyle(fontSize: 12)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Text(
                price,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(width: 4),
              Text(
                trailing,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DiscoverMatchesScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: Text(
                buttonText,
                style: TextStyle(color: buttonTextColor),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 20,
            runSpacing: 8,
            children: features
                .map((e) => SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 50,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: tickColor,
                            ),
                            child:
                                Icon(Icons.check, size: 12, color: tickInside),
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              e,
                              style: TextStyle(color: textColor, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

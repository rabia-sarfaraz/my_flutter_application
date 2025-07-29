import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/let_started_screen.dart';
import 'screens/sign_in_couple_screen.dart';
import 'screens/sign_up_screen2.dart';
import 'screens/sign_up_screen3.dart';
import 'screens/welcome_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/about_you_who.dart';
import 'screens/about_you_screen.dart';
import 'screens/about_you_birthday_screen.dart';
import 'screens/about_you_picture_screen.dart';
import 'screens/marriage_family_screen.dart';
import 'screens/interests_personality_screen.dart';
import 'screens/voice_video_introduction_screen.dart';
import 'screens/video_introduction_screen.dart';
import '/screens/bio_input_screen.dart';
import '/screens/bio_details_screen.dart';
import '/screens/interests_and_personality_screen.dart';
import '/screens/home_screen.dart';
import '/screens/membership_plans_screen.dart';
import '/screens/discover_matches_screen.dart';
import '/screens/quick_matches_screen.dart';
import '/screens/swipe_matches_screen.dart';
import '/screens/swipe_left_screen.dart';
import '/screens/match_screen.dart';
import '/screens/family_panel1_screen.dart';
import '/screens/family_panel2_screen.dart';
import '/screens/family_panel3_screen.dart';
import '/screens/family_panel4_screen.dart';
import '/screens/nikah_navigator1_screen.dart';
import '/screens/nikah_navigator2_screen.dart';
import '/screens/nikah_navigator3_screen.dart';
import '/screens/nikah_navigator4_screen.dart';
import '/screens/firasa_insight1_screen.dart';
import '/screens/firasa_insight2_screen.dart';
import '/screens/firasa_insight3_screen.dart';
import '/screens/firasa_insight4_screen.dart';
import '/screens/mahr_calculator1_screen.dart';
import '/screens/mahr_calculator2_screen.dart';
import '/screens/mahr_calculator3_screen.dart';
import '/screens/your_journey_screen.dart';
import '/screens/inbox_screen.dart';

void main() {
  runApp(const NikahPlusApp());
}

class NikahPlusApp extends StatelessWidget {
  const NikahPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nikah Plus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/get_started': (context) => const GetStartedScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/sign_in_couple': (context) => const SignInCoupleScreen(),
        '/sign_up_screen2': (context) => const SignUpScreen2(),
        '/sign_up_screen3': (context) => const SignUpScreen3(),
        '/let_started': (context) => const LetStartedScreen(),
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/about_you_who': (context) => const AboutYouWhoScreen(),
        '/about_you': (context) => const AboutYouScreen(),
        '/birthday': (context) => const AboutYouBirthdayScreen(),
        '/about_you_picture': (context) => const AboutYouPictureScreen(),
        '/marriage_family': (context) => const MarriageFamilyScreen(),
        '/interests_personality': (context) =>
            const InterestsPersonalityScreen(),
        '/voice_video_introduction': (context) =>
            const VoiceVideoIntroductionScreen(),
        '/video_introduction_screen': (context) =>
            const VideoIntroductionScreen(),
        '/bio_input_screen': (context) => const BioInputScreen(),
        '/bio_details_screen': (context) => const BioDetailsScreen(),
        '/interests_and_personality_screen': (context) =>
            const InterestsAndPersonalityScreen(),
        '/home_screen': (sontext) => const HomeScreen(),
        '/membership_plans': (context) => const MembershipPlansScreen(),
        '/discover_matches': (context) => const DiscoverMatchesScreen(),
        'quick_matches': (context) => const QuickMatchesScreen(),
        '/swipe_matches': (context) => const SwipeMatchesScreen(),
        '/swipe_left': (context) => const SwipeLeftScreen(),
        '/match': (context) => const MatchScreen(),
        '/family_panel1': (context) => const FamilyPanel1Screen(),
        '/family_panel2': (context) => const FamilyPanel2Screen(),
        '/family_panel3': (context) => const FamilyPanel3Screen(),
        '/family_panel4': (context) => const FamilyPanel4Screen(),
        '/nikah_navigator1': (context) => const NikahNavigator1Screen(),
        '/nikah_navigator2': (context) => const NikahNavigator2Screen(),
        '/nikah_navigator3': (context) => const NikahNavigator3Screen(),
        '/nikah_navigator4': (context) => const NikahNavigator4Screen(),
        '/firasa_insight1': (context) => const FirasaInsight1Screen(),
        '/firasa_insight2': (context) => const FirasaInsight2Screen(),
        '/firasa_insight3': (context) => const FirasaInsight3Screen(),
        '/firasa_insight4': (context) => const FirasaInsight4Screen(),
        '/mahr_calculator1': (context) => const MahrCalculator1Screen(),
        '/mahr_calculator2': (context) => const MahrCalculator2Screen(),
        '/mahr_calculator3': (context) => const MahrCalculator3Screen(),
        '/your_journey': (context) => const YourJourneyScreen(),
        '/inbox': (context) => const InboxScreen(),
      },
    );
  }
}

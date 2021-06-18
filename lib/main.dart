import 'package:flutter/material.dart';
import 'package:gig/UserAuth/Signup.dart';
import 'package:minimal_onboarding/minimal_onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<OnboardingPageModel> onboardingPages = [
    OnboardingPageModel('assets/page4.png', 'Work',
        'Do not hesitate to work in the field you love ♥️ '),
    OnboardingPageModel('assets/page5.png', 'Resume',
        'Resume tells everything about you and your skills. It is basically a document which is mini version of you'),
    OnboardingPageModel('assets/page6.png', 'Getting paid',
        'Every one gets a job but very few work in there loved field so using Gig you can get paid by working in a field you love ♥️ '),
    OnboardingPageModel('assets/page7.png', 'Qualtity',
        'Getting a dream job in a dream company is a dream of may people but there are only few who are willing to persur there field in Gig you have wide varity of campanies you can select from.'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minimal Onboarding example',
      home: SignUpScreen(),
      // home: MinimalOnboarding(
      //   onboardingPages: onboardingPages,
      //   dotsDecoration: DotsDecorator(
      //     activeColor: Color(0xFF4E67EB),
      //     size: const Size.square(9.0),
      //     activeSize: const Size(18.0, 9.0),
      //     activeShape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(
      //         5.0,
      //       ),
      //     ),
      //   ),
      //   // onFinishButtonPressed: () {
      //   //   SignUpScreen();
      //   // },
      // ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: TestScreen(),
//     );
//   }
// }

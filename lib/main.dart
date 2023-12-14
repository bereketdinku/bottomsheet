import 'package:bottomsheet_model/widget/contact_us_widget.dart';
import 'package:bottomsheet_model/widget/language_widget.dart';
import 'package:bottomsheet_model/widget/social_media_widget.dart';
import 'package:flutter/material.dart';

import 'widget/theme_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ThemeWidget(),
          SocialMediaWidget(),
          LanguageWidget(),
          ContactUsWiget()
        ],
      ),
    );
  }
}

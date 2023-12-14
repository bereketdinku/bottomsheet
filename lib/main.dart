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
  int selectedRadio = 1;
  int _groupValue = 0;
  String selectedRadioValue = '';

  void handleRadioValueChanged(int value) {
    setState(() {
      selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Column(
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

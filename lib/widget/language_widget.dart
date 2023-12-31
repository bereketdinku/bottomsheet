import 'package:flutter/material.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({super.key});

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  int? selectedRadio = 1;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(width * 0.04),
              topRight: Radius.circular(width * 0.04),
            ),
          ),
          context: context,
          builder: (context) => Container(
            width: width,
            height: height * 0.3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.03,
                vertical: height * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Languages',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 1.0,
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              activeColor: Colors.green,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value!;
                                });
                              }),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'አማረኛ',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              activeColor: Colors.green,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value!;
                                });
                              }),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Afaan Oromo',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 3,
                              activeColor: Colors.green,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value!;
                                });
                              }),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'ትግርኛ',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 4,
                              activeColor: Colors.green,
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                setState(() {
                                  selectedRadio = value!;
                                });
                              }),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Af-Soomali',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: const Text('Language'),
    );
  }
}

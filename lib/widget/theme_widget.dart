import 'package:flutter/material.dart';

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({super.key});

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
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
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Theme',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        ),
                        RadioListTile(
                          key: ValueKey<int>(1),
                          activeColor: Colors.green,
                          title: Text(
                            'Set Defualt',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value as int?;
                            });
                          },
                        ),
                        RadioListTile(
                          key: ValueKey<int>(2),
                          activeColor: Colors.green,
                          title: Text(
                            'Light',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          value: 2,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value as int?;
                            });
                          },
                        ),
                        RadioListTile(
                          key: ValueKey<int>(3),
                          activeColor: Colors.green,
                          title: Text(
                            'Dark',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          value: 3,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(() {
                              selectedRadio = value as int?;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: const Text('Theme'),
    );
  }
}

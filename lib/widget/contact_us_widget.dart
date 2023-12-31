import 'package:flutter/material.dart';

class ContactUsWiget extends StatelessWidget {
  const ContactUsWiget({super.key});

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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1.0,
                      ),
                      Row(
                        children: [
                          Text('Email:',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'support@testa.et',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Phone: ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '0940404050',
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
      child: const Text('Contact Us'),
    );
  }
}

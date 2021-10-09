import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo('Adress', 'Station Street 1'),
        buildContactInfo('Country', 'Sudan'),
        buildContactInfo('Email', 'MrJae@gmail.com'),
        buildContactInfo('Mobile', '+249 927824940'),
        buildContactInfo('Website', 'SaeedMrJae.com'),
      ],
    );
  }

  Padding buildContactInfo(String title, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            text,
          )
        ],
      ),
    );
  }
}

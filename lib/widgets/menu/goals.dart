import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_app/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals('Greate Programmer'),
        buildGoals('Speak Englis'),
        buildGoals('Get a lot of money'),
        buildGoals('Help my country'),
      ],
    );
  }

  Padding buildGoals(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            text,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }
}

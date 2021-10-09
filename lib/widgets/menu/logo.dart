import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: kSecondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 100.0,
              ),
              const Spacer(),
              Text(
                'Real Estate',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Text(
                'Modren home with \n with Greate interior design',
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ));
  }
}

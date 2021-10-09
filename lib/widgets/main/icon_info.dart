import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/resposive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMoblileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context, Icons.supervisor_account, '67+', 'Client'),
                    ),
                    Expanded(
                      child: buildIconInfo(
                          context, Icons.location_on, '139+', 'Project'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: buildIconInfo(
                            context, Icons.public, '30+', 'Countries')),
                    Expanded(
                        child: buildIconInfo(
                            context, Icons.star, '13k+', 'Stars')),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                    context, Icons.supervisor_account, '67+', 'Client'),
                buildIconInfo(context, Icons.location_on, '139+', 'Project'),
                buildIconInfo(context, Icons.public, '30+', 'Countries'),
                buildIconInfo(context, Icons.star, '13k+', 'Stars'),
              ],
            ),
    );
  }

  Column buildIconInfo(
      BuildContext context, IconData icon, String text, String label) {
    return Column(
      children: [
        Icon(
          icon,
          size: 45.0,
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 18.0),
        ),
        Text(
          label,
          // style:  Theme.of(context).textTheme.subtitle2,
          style: const TextStyle(color: Colors.white, fontSize: 9.0),
        )
      ],
    );
  }
}

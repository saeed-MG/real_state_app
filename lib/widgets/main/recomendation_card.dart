import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/models/recomendation.dart';

class RecomendationCard extends StatelessWidget {
  final Recommendation recommendation;
  const RecomendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      width: 400.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(recommendation.image!),
              ),
              title: Text(
                recommendation.name!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              subtitle: Text(
                recommendation.source!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              recommendation.text!,
              maxLines: 4,
              style: const TextStyle(height: 1.5),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

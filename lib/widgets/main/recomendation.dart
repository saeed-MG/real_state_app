import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/models/recomendation.dart';
import 'package:real_state_app/widgets/main/recomendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Client Recommendations:',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoRecommendations.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: RecomendationCard(
                  recommendation: demoRecommendations[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

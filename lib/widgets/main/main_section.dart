import 'package:flutter/material.dart';
import 'package:real_state_app/screens/home_screen.dart';
import 'package:real_state_app/widgets/main/home_banner.dart';
import 'package:real_state_app/widgets/main/icon_info.dart';
import 'package:real_state_app/widgets/main/projects.dart';
import 'package:real_state_app/widgets/main/recomendation.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: const [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}

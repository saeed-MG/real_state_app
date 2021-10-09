import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/resposive.dart';
import 'package:real_state_app/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  final Widget mainSection;

  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenuSection(),
                  ),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
                const SizedBox(
                  width: kDefaultPadding,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

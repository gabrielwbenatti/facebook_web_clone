import 'package:facebook_web_aula/components/circle_button.dart';
import 'package:facebook_web_aula/components/image_text.dart';
import 'package:facebook_web_aula/components/navigation_tabs.dart';
import 'package:facebook_web_aula/data/dados.dart';
import 'package:facebook_web_aula/models/models.dart';
import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({
    Key? key,
    required this.icons,
    required this.onTap,
    required this.selectedPageIndex,
    required this.user,
  }) : super(key: key);

  final List<IconData> icons;
  final int selectedPageIndex;
  final Function(int) onTap;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 56,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(
              child: Text(
            'facebook desktop',
            style: TextStyle(
              color: ColorPallete.blueFacebook,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: -1.2,
            ),
          )),
          Expanded(
            child: NavigationTabs(
              selectedPageIndex: selectedPageIndex,
              onTap: onTap,
              icons: icons,
              topIndicator: false,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ImageText(
                  user: atualUser,
                  onTap: () {},
                ),
                CircleButton(
                  icon: Icons.search,
                  onPressed: () {},
                ),
                CircleButton(
                  icon: Icons.message,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

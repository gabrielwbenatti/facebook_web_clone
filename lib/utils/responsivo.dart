import 'package:flutter/material.dart';

class Responsivo extends StatelessWidget {
  const Responsivo({
    Key? key,
    required this.desktop,
    required this.mobile,
    this.tablet,
  }) : super(key: key);

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 800) {
          Widget? tabletResult = tablet;
          if (tabletResult != null) {
            return tabletResult;
          } else {
            return mobile;
          }
        } else {
          return mobile;
        }
      },
    );
  }
}

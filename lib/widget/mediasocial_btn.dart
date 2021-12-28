import 'package:flutter/material.dart';
import 'package:meu_portfolio/constants.dart'; 

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  const SocialMediaIconBtn(
      {Key? key,
      required this.icon,
      required this.socialLink,
      required this.height,
      required this.horizontalPadding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
          color: Colors.white,
        ),
        iconSize: height,
        onPressed: () => launchURL(socialLink),
        hoverColor: Colors.blue.withOpacity(0.8),
      ),
    );
  }
}

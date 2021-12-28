import 'package:flutter/material.dart';
import 'package:meu_portfolio/contact/contact_desktop.dart';
import 'package:meu_portfolio/contact/contact_mobile.dart'; 
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ContactMobileTab(),
      tablet: const ContactMobileTab(),
      desktop: const ContactDesktop(),
    );
  }
}

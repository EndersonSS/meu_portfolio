import 'package:flutter/material.dart';
import 'package:meu_portfolio/portfolio/portfolio_desktop.dart';
import 'package:meu_portfolio/portfolio/portfolio_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // mobile: PortfolioMobileTab(),
      // tablet: PortfolioMobileTab(),
      // desktop: PortfolioDesktop(),
      mobile: const PortfolioMobile(),
      desktop: const PortfolioDesktop(),
    );
  }
}

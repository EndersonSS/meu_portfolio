import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_portfolio/animations/bottom_animation.dart';
import 'package:meu_portfolio/animations/entrance_fader.dart';
import 'package:meu_portfolio/constants.dart';
import 'package:meu_portfolio/provider/theme_provider.dart';
import 'package:meu_portfolio/widget/adaptive_text.dart';
import 'package:meu_portfolio/widget/mediasocial_btn.dart';
import 'package:provider/provider.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.50,
      margin: EdgeInsets.fromLTRB(
        width * 0.1,
        height * 0.15,
        width * 0.1,
        0,
      ),
      width: 200,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Wrap(
            spacing: 5.0, // gap between adjacent chips
            runSpacing: 5.0,
            children: [
              Opacity(
                opacity: 0.9,
                child: EntranceFader(
                    offset: const Offset(0, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: SizedBox(
                      child: CircleAvatar(
                        radius: height * 0.20,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/person.jpg",
                            height: width < 1200 ? height * 0.8 : height * 0.85,
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: width * 0.05,
                height: height * 0.45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdaptiveText(
                    "Olá, Meu nome é ",
                    style: TextStyle(
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.w300,
                      color: _themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Wrap(
                    spacing: 5.0, // gap between adjacent chips
                    runSpacing: 5.0,
                    children: [
                      AdaptiveText(
                        "Enderson ",
                        style: GoogleFonts.montserrat(
                            fontSize:
                                width < 1200 ? height * 0.085 : height * 0.095,
                            fontWeight: FontWeight.w500,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            letterSpacing: 4.0),
                      ),
                      AdaptiveText(
                        "Serra, ",
                        style: GoogleFonts.montserrat(
                            fontSize:
                                width < 1200 ? height * 0.085 : height * 0.095,
                            fontWeight: FontWeight.w100,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            letterSpacing: 4.0),
                      ),
                    ],
                  ),
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.play_arrow_rounded,
                          color: kPrimaryColor,
                        ),
                        AdaptiveText(
                          "Desenvolvedor Mobile",
                          style: GoogleFonts.montserrat(
                              color: _themeProvider.lightTheme
                                  ? Colors.black
                                  : Colors.yellow,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 5.0),
                        ),
                        EntranceFader(
                          offset: const Offset(0, 0),
                          delay: const Duration(seconds: 2),
                          duration: const Duration(milliseconds: 800),
                          child: Image.asset(
                            "assets/images/hello.gif",
                            height: height * 0.03,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      kSocialIcons.length,
                      (index) => WidgetAnimator(
                        child: SocialMediaIconBtn(
                          icon: kSocialIcons[index],
                          socialLink: kSocialLinks[index],
                          height: height * 0.035,
                          horizontalPadding: width * 0.005,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

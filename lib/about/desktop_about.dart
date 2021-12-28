import 'package:flutter/material.dart';
import 'package:meu_portfolio/constants.dart';
import 'package:meu_portfolio/provider/theme_provider.dart';
import 'package:meu_portfolio/widget/adaptive_text.dart';
import 'package:meu_portfolio/widget/custom_textheading.dart';
import 'package:meu_portfolio/widget/tools_techwidget.dart';
import 'package:provider/provider.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        left: width * 0.02,
        right: width * 0.02,
        bottom: height * 0.2,
      ),
      color: _themeProvider.lightTheme
          ? Colors.blueGrey[100]
          : const Color(0xFF333646),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSobre Mim"),
          // const CustomSectionSubHeading(text: ""),
          const SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/background.png',
                  height: height * 0.5,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Quem sou eu ?",
                        style: TextStyle(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        """Olá, meu nome é Enderson Serra tenho 23 anos sou graduado em Sistema de Informação pelo Centro Universitário UNDB. Tenho experiencia profissional em desenvolvimento de """
                        """aplicativos moveis há mais de um ano e meio, sempre tive contato com a área de programação tanto em projetos """
                        """pessoais como no decorrer da graduação e estou sempre em constante aprendizado, conhecendo novas tecnologias e obtendo valiosas experiências de aprendizado.""",
                        style: TextStyle(
                          fontSize: height * 0.02,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.grey[400],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[300]!, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Tecnologias com as quais trabalhei e trabalho:",
                        style: TextStyle(
                            color: kPrimaryColor, fontSize: height * 0.018),
                      ),
                      SizedBox(
                        height: height * 0.15,
                        width: double.infinity,
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          direction: Axis.vertical,
                          alignment: WrapAlignment.start,
                          children: [
                            for (int i = 0; i < kTools.length; i++)
                              ToolTechWidget(
                                techName: kTools[i],
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[300]!, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

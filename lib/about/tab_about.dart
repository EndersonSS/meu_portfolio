import 'package:flutter/foundation.dart';
import 'package:meu_portfolio/constants.dart';
import 'package:meu_portfolio/provider/theme_provider.dart';
import 'package:meu_portfolio/widget/custom_textheading.dart';
import 'package:meu_portfolio/widget/tools_techwidget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.blueGrey[100]
          : const Color(0xFF333646),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSobre Mim"),
          SizedBox(
            height: height * 0.032,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Quem sou eu ?",
              style: TextStyle(color: kPrimaryColor, fontSize: height * 0.028),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
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
                bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Tecnologias com as quais trabalhei e trabalho:",
              style: TextStyle(color: kPrimaryColor, fontSize: height * 0.018),
            ),
          ),
          SizedBox(
            height: height * 0.25,
            child: Wrap(
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
                bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.010,
          ),
        ],
      ),
    );
  }
}

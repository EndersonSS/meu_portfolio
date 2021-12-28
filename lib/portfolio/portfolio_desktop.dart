import 'package:flutter/material.dart';
import 'package:meu_portfolio/data/data_portfolio.dart';
import 'package:meu_portfolio/provider/theme_provider.dart';
import 'package:meu_portfolio/widget/custom_textheading.dart';
import 'package:provider/provider.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      margin: EdgeInsets.fromLTRB(
        width * 0.1,
        height * 0.09,
        width * 0.1,
        0,
      ),
      child: Column(children: [
        const CustomSectionHeading(text: "\n Portfólio"),
        const SizedBox(height: 30.0),
        Wrap(
          children: PROJECTS
              .map((p) => _projetcts(context, p, height, _themeProvider))
              .toList(),
          spacing: 5,
          runSpacing: 5,
        )
      ]),
    );
  }

  Widget _projetcts(
      BuildContext context, DataProjeto project, height, _themeProvider) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * .7,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * .3,
                  child: Image.asset(project.image!),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .075),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .01,
                      ),
                      Text(project.name!,
                          style: TextStyle(
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.w400,
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .01,
                      ),
                      Text(
                        project.description!,
                        style: TextStyle(
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .025,
                      ),
                      Wrap(
                        spacing: 10,
                        runSpacing: 5.0,
                        children: project.skills!
                            .map((s) => Chip(
                                backgroundColor: Colors.blue,
                                label: Text(
                                  s,
                                  style: TextStyle(
                                      color: _themeProvider.lightTheme
                                          ? Colors.white
                                          : Colors.black),
                                )))
                            .toList(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * .025,
                      ),
                      // OutlineButton(
                      //   onPressed: () {
                      //     launch(project.url!);
                      //   },
                      //   color: AppColors.yellow,
                      //   textColor: AppColors.yellow,
                      //   borderSide: BorderSide(
                      //     color: AppColors.yellow!.withOpacity(.5),
                      //     width: 5,
                      //   ),
                      //   padding: const EdgeInsets.symmetric(
                      //     horizontal: 50,
                      //     vertical: 20,
                      //   ),
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(20),
                      //   ),
                      //   child: const Text('Visit'),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black.withOpacity(.1),
              height: 20,
              thickness: 1,
            ),
          ],
        ));
  }
}

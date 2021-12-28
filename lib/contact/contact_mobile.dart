  
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/constants.dart';
import 'package:meu_portfolio/widget/custom_textheading.dart';
import 'package:meu_portfolio/widget/project_card.dart'; 

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nEntre em contato"),
        const CustomSectionSubHeading(
            text: "Vamos construir algo juntos :)\n\n"),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) =>
              Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              cardWidth: width > 480 ? width * 0.5 : width * 0.8,
              projectIconData: kContactIcons[i],
              projectTitle: kContactTitles[i],
              projectDescription: kContactDetails[i],
            ),
          ),
          options: CarouselOptions(
              height: height * 0.3,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false),
        ),
      ],
    );
  }
}

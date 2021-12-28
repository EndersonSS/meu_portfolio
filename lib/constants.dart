import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const kTextColor = Colors.white;
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

OutlineInputBorder kDefaultOutlineInputBorder = const OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

const kSocialLinks = [
  "https://www.instagram.com/invites/contact/?i=1fyiv4ai9d9df&utm_content=qjudyp",
  "https://www.linkedin.com/in/enderson-soubreira-b9762a186/",
  "https://github.com/EndersonSS",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

const Color kPrimaryColor = Colors.blue;

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Php",
  "HTML",
  "C++",
  "MySQl",
  "Firebird",
  "Sqlite",
  "Docker",
  "Git",
  "Figma"
];


// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Localização",
  "Tefelone",
  "Email",
];

final kContactDetails = [
  "São Luis/MA",
  "(+98) 98328-3591",
  "eendersonserra@gmail.com"
];
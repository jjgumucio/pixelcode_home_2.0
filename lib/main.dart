import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixelcode/app/theme_constants.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'ui/pages/Experience/experience_page.dart';
import 'ui/pages/Home/home_page.dart';
import 'ui/pages/Services/services_page.dart';
import 'ui/pages/Team/team_page.dart';

void main() {
  runApp(PixelCode());
}

class PixelCode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (BuildContext context, widget) => ResponsiveWrapper.builder(
        widget,
        maxWidth: 1400,
        minWidth: 360,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(768, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
        ],
      ),
      getPages: [
        GetPage(
          name: "/",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/services",
          page: () => ServicesPage(),
          transition: Transition.downToUp
        ),
        GetPage(
          name: "/experience",
          page: () => ExperiencePage(),
          transition: Transition.downToUp
        ),
        GetPage(
          name: "/team",
          page: () => TeamPage(),
          transition: Transition.downToUp
        ),
      ],
      title: 'PixelCode - Diseño y Desarrollo',
      debugShowCheckedModeBanner: false,
      theme: pixelCodeTheme,
      home: HomePage(),
    );
  }
}

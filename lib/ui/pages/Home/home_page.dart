import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixelcode/app/theme_constants.dart';

import 'section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: kNavbarHeight,
          backgroundColor: Colors.white,
          title: TextButton(
            child: Container(
              margin: EdgeInsets.only(
                left: 30,
              ),
              height: 40,
              child: Image(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            onPressed: () => Get.offNamed("/"),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Home",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Servicios",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Experiencia",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Equipo",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              child: Text(
                "Contacto",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Section(
              deviceWidth: deviceWidth,
              deviceHeight: deviceHeight,
              imagePath: "assets/images/dev-focus.png",
              imageSemanticLabel: "Tienes ideas o projectos en mente?",
              title: "Tienes ideas o projectos en mente?",
              descriptionParagraphs: [
                "Permitenos ser tu socio en el diseño y desarrollo de tus ideas y proyectos!",
                "En PixelCode tenemos la experiencia necesaria para desarrollar cualquier tipo de proyecto tecnológico.",
                "Serás partícipe activo e indispensable junto a nuestro equipo durante todo el proceso.",
              ],
              callToActionTitle: "Hablemos!",
              callToActionBody: "Sin compromisos...",
            ),
            Section(
              deviceWidth: deviceWidth,
              deviceHeight: deviceHeight,
              imagePath: "assets/images/personal-finance.png",
              imageSemanticLabel: "Nos preocupamos por tu presupuesto",
              title: "Te espanta lo que cobran las empresas del rubro?",
              descriptionParagraphs: [
                "PixelCode también es una pequeña pero ágil empresa en la que cuidamos tu presupuesto.",
                "Nos caracterizamos por nuestra flexibilidad en precios y planes.",
                "Siempre atentos a tus necesidades de negocio, tipo de proyecto y disponibilidad de tiempo.",
              ],
              callToActionTitle: "Conversemos!",
              callToActionBody: "No perdemos nada...",
              inverted: true,
            ),
          ],
        ),
      ),
    );
  }
}
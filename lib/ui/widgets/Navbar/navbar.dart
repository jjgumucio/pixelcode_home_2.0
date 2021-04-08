import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Get.offNamed("/");
        },
        icon: Image.asset("assets/icons/design-yellow.png"),
      ),
      title: TextButton(
        child: Text(
          "PixelCode - Diseño y Desarrollo",
          style: Theme.of(context).textTheme.headline2,
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
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_tile.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Hero(
          tag: 'services',
          child: GestureDetector(
            onTap: () => Get.offNamed('/services'),
            child: MenuTile(
              imageAssetPath: 'assets/images/services.png',
              title: 'Servicios',
            ),
          ),
        ),
        Hero(
          tag: 'experience',
          child: GestureDetector(
            onTap: () => Get.offNamed('/experience'),
            child: MenuTile(
              imageAssetPath: 'assets/images/experience.png',
              title: 'Experiencia',
            ),
          ),
        ),
        Hero(
          tag: 'team',
          child: GestureDetector(
            onTap: () => Get.offNamed('/team'),
            child: MenuTile(
              imageAssetPath: 'assets/images/team.png',
              title: 'Equipo',
            ),
          ),
        ),
      ],
    );
  }
}

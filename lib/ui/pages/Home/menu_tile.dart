import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String? imageAssetPath;
  final String? title;

  const MenuTile({
    Key? key,
    this.imageAssetPath,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          20,
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage(
                imageAssetPath!,
              ),
              fit: BoxFit.cover,
              height: 200,
              width: MediaQuery.of(context).size.width / 4,
            ),
            Text(
              title!,
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
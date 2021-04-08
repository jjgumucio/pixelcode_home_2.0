import 'package:flutter/material.dart';
import 'package:pixelcode/app/theme_constants.dart';

import 'action_button.dart';

class Section extends StatelessWidget {
  final double deviceWidth;
  final double deviceHeight;
  final String imagePath;
  final String imageSemanticLabel;
  final String title;
  final List<String> descriptionParagraphs;
  final String callToActionTitle;
  final String callToActionBody;
  final bool inverted;

  const Section({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
    this.imagePath = "assets/images/dev-focus.png",
    this.imageSemanticLabel = "Tienes ideas o projectos en mente?",
    this.title = "Tienes una idea o proyecto en mente?",
    this.descriptionParagraphs = const ["Descripción de la sección"],
    this.callToActionTitle = "Hablemos!",
    this.callToActionBody = "Sin compromisos...",
    this.inverted = false,
  }) : super(key: key);

  List<Widget> _generateParagraphs(BuildContext context) {
    final List<Widget> titleWidget = [
      Text(
        title,
        style: Theme.of(context).textTheme.headline1,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 30,
      ),
    ];

    final paragraphs = descriptionParagraphs.map(
        (p) => Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                p,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
            ]));
    titleWidget.addAll(paragraphs);
    return titleWidget;
  }

  _renderWidgets(BuildContext context) {
    if (!inverted) {
      return [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image(
            image: AssetImage(
              imagePath,
            ),
            width: deviceWidth / 2,
            semanticLabel: imageSemanticLabel,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 90,
          ),
          width: deviceWidth / 2.2,
          child: Column(
            children: _generateParagraphs(context),
          ),
        ),
      ];
    } else {
      return [
        Container(
          margin: EdgeInsets.only(
            top: 90,
          ),
          width: deviceWidth / 2.2,
          child: Column(
            children: _generateParagraphs(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image(
            image: AssetImage(
              imagePath,
            ),
            width: deviceWidth / 2,
            semanticLabel: imageSemanticLabel,
          ),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: deviceWidth,
        minHeight: deviceHeight - kNavbarHeight,
        maxWidth: deviceWidth,
        maxHeight: deviceHeight - kNavbarHeight,
      ),
      child: Column(
        children: [
          Row(
            children: _renderWidgets(context),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  callToActionTitle,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  callToActionBody,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 20,
                ),
                ActionButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

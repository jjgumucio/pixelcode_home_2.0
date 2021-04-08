import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            200,
            50,
          ),
        ),
        child: Text("CONTACTANOS"),
        onPressed: () {
          Get.toNamed("/contacto");
        },
      ),
    );
  }
}
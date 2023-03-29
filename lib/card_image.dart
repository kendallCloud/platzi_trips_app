import 'package:flutter/material.dart';

class  CardImage extends StatelessWidget {

  String pathImage = "";

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
        width: 90.0,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child:Image.network(pathImage),
    );
    return card;
  }

}
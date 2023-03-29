// ignore: file_names
import 'package:flutter/material.dart';
import 'card_image.dart';

class ContactCard extends StatelessWidget {
  String pathImage = "";
  String contactName = "UNKOWN";
  String lastMessage = "";

  ContactCard(this.pathImage, this.contactName, this.lastMessage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
        height: 100.0,
        child: Row(children: <Widget>[
          CardImage(pathImage),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contactName,textAlign:TextAlign.left,style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(lastMessage)
              ])
        ]
          )
        );
    return card;
  }
}
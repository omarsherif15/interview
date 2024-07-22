import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FooterText extends StatelessWidget {
  const FooterText({super.key, required this.title, this.iconNeed = false, this.iconData});

  final  String title;
  final  bool iconNeed;
  final  IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Visibility(
            visible: iconNeed,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(iconData, size: 15,color: HexColor('#F18638'),),
              )
          ),
          Text(title,style: const TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}

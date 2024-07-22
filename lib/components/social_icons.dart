import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HexColor('#F18638'),
        ),
        child: const Icon(Icons.facebook,color: Colors.white,),
      ),
    );
  }
}

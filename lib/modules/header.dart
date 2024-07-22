import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.8,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.fill,
                  opacity: 0.5),
              backgroundBlendMode: BlendMode.darken),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Container(
            width: 1000,
            height: MediaQuery.of(context).size.height*0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Discover The ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 80,
                      ),
                      children: [
                        TextSpan(
                          text: 'Foundation ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 80,
                              color: HexColor('#F18638')),
                        ),
                        const TextSpan(
                          text: 'Of Excellence In Mining ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 80,
                              color: Colors.white),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Explore our offerings of silica sand, salt, gypsum, and more',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide.none),
                      maximumSize: Size(150, 50),
                      minimumSize: Size(100, 50),
                      backgroundColor: HexColor('#F18638'),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Discover',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,)
                      ],
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

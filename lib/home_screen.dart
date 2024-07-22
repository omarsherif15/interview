import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'modules/body.dart';
import 'modules/footer.dart';
import 'modules/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 0.5,
        excludeHeaderSemantics: false,
        forceMaterialTransparency: true,

        scrolledUnderElevation: 20,
        leadingWidth: 120,
        toolbarHeight: 100,
        leading: const Image(image: AssetImage('assets/logo.png')),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Home',style: TextStyle(fontSize: 20,color: Colors.white)),
            const SizedBox(
              width: 20,
            ),
            const Text('About Us',style: TextStyle(fontSize: 20,color: Colors.white)),
            PopupMenuButton(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context) => [],
              icon: const Row(
                children: [
                  Text(
                    'Product',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
            const Text('Packing',style: TextStyle(fontSize: 20,color: Colors.white)),
            const SizedBox(
              width: 20,
            ),
            const Text('Quality Control',style: TextStyle(fontSize: 20,color: Colors.white)),
          ],
        ),
        actions: [
          PopupMenuButton(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context) => [],
            icon: const Row(
              children: [
                Text(
                  'En',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                Icon(Icons.arrow_drop_down_sharp,color: Colors.white,)
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide.none),
                backgroundColor: HexColor('#F18638'),
              ),
              onPressed: () {},
              child: const Text(
                'Contact Us',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            width: 30,
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Body(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

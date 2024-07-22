import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  color: HexColor('#F18638').withOpacity(0.56),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 15.0, start: 15),
                child: Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(image: AssetImage('assets/card.jpg'),fit: BoxFit.fill)
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 30,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Text('Enhance your projects with the brilliance of our mining materials',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text('Our commitment to excellence goes beyond the surface it\'s'
                    ' embedded in every grain of silica sand, every crystal of salt, '
                    'and every piece of gypsum. Explore the richness of our mining treasures, '
                    'where precision meets passion. Craft your projects with the assurance of unparalleled '
                    'quality, trust, and reliability.'
                  ,style: TextStyle(fontSize: 15),),
                SizedBox(height: 50,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide.none),
                      maximumSize: Size(200, 50),
                      minimumSize: Size(100, 50),
                      backgroundColor: HexColor('#F18638'),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'View Products',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white,)
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

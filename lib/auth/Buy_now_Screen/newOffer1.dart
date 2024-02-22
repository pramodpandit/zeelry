import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../../widget/Text.dart';
import 'newOffer2.dart';

class newOffer1 extends StatefulWidget {
  const newOffer1({super.key});

  @override
  State<newOffer1> createState() => _newOffer1State();
}

class _newOffer1State extends State<newOffer1> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appcolor.backGroundColor,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              longtext('New Order',17,Colors.white,17,38),

            ],
          ),
          SizedBox(height: 30,),
          Image.asset(image.ringImage),
          SizedBox(height: 20,),
          longtext('Introducing First Payment Ring',17,Colors.white,17,38),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              longtext('Fastest',34,Colors.green,34,38),
              SizedBox(width: 10,),
              longtext('Payment ',34,Colors.white,34,38),
            ],
          ),
          longtext('Experience Ever',34,Colors.white,17,38),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: sorttext('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'
              'incididunt ut labore et dolore magna aliqua.',14,appcolor.white,38,34),
          ),
          SizedBox(height: size.height*0.15,),
          InkWell(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>newOffer2()));
            },
            child: Container(
              height: 54,
              width: size.width*0.85,
              decoration: BoxDecoration(
                color: appcolor.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: sorttext('Get Ring',16,appcolor.white,38,34),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

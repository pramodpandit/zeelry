import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../widget/Text.dart';
import 'loginPage.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appcolor.backGroundColor,
      body: Column(
        children: [
          SizedBox(height:size.height *0.2 ,),
          Image.asset(image.startingImage),
          SizedBox(height: size.height*0.05,),
          longtext('Welcome to Zeelry',28,appcolor.white,34,38),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: sorttext('Voila! You have successfuly created your account.',16,Colors.white,38,34),
          ),
          SizedBox(height: size.height*0.06,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>loginPage()));
            },
            child: Container(
              height: 54,
              width: size.width*0.85,
              decoration: BoxDecoration(
                color: appcolor.greenColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: sorttext('Get Started',16,appcolor.white,38,34),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

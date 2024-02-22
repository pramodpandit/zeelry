import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../auth/Login_signup.dart';
import '../widget/Text.dart';


class Secondui extends StatefulWidget {
  const Secondui({super.key});
  @override
  State<Secondui> createState() => _SeconduiState();
}

class _SeconduiState extends State<Secondui> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appcolor.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(child: Image.asset(image.secondUiImage)),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.35,
        decoration: BoxDecoration(
            color: appcolor.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(30)
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,top: 40,bottom: 15),
              child: longtext('Pay Anything',28,Colors.black,38,38),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: sorttext('Supports many types of payments and pay without being complicated',18,Color(0xff8F92A1),26,26),
            ),
            Spacer(),
            InkWell(
              onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_signup()));
              },
              child: Container(
                height: 65,
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: appcolor.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: longtext('Get Started',20,appcolor.white,38,34),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

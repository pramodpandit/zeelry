import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../auth/Login_signup.dart';
import '../widget/Text.dart';
import 'Secondui.dart';


class firstui extends StatefulWidget {
  const firstui({super.key});
  @override
  State<firstui> createState() => _firstuiState();
}

class _firstuiState extends State<firstui> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appcolor.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_signup()));
              }, child: Text('Skip',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),))],),
            Center(child: Image.asset(image.firstUiImage)),
          ],
        ),
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
              child: longtext('Fastest Payment',28,Colors.black,38,38),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: sorttext('QR code scanning technology makes your payment process more faster',18,Color(0xff8F92A1),26,26),
            ),
            Spacer(),
            InkWell(
              onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Secondui()));
              },
              child: Container(
                height: 54,
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: appcolor.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: longtext('Next',20,appcolor.white,38,34),
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

import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../widget/Text.dart';
import 'Buy_now_Screen/newOffer1.dart';
import 'Register.dart';
import 'loginPage.dart';

class Login_signup extends StatefulWidget {
  const Login_signup({super.key});

  @override
  State<Login_signup> createState() => _Login_signupState();
}

class _Login_signupState extends State<Login_signup> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appcolor.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(child: longtext('India First Payment Ring',26,Colors.white,38,38)),
            ),
            Image.asset(image.SignupLoginImage,fit: BoxFit.contain,),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(child: longtext('Want to order a Ring?',22,Colors.white,38,38)),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>newOffer1()));
              },
              child: Container(
                height: 54,
                width: size.width*0.85,
                decoration: BoxDecoration(
                  color: appcolor.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: sorttext('Buy Now',20,appcolor.backGroundColor,38,34),
                ),
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginPage()));
              },
              child: Container(
                height: 54,
                width: size.width*0.85,
                decoration: BoxDecoration(
                  color: appcolor.black,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: sorttext('Login',20,appcolor.white,38,34),
                ),
              ),
            ),
            SizedBox(height: 10,),
            sorttext('Or',16,appcolor.white,38,34),
            SizedBox(height: 10,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                },
                child: Text('Register',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,decoration: TextDecoration.underline,color: appcolor.white,decorationColor: Colors.white),))

          ],
        ),
      ),
    );
  }
}

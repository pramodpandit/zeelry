import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:untitled/content/appcolor.dart';

import '../../widget/Text.dart';
import 'newPassword.dart';

class email_Verification extends StatefulWidget {
  const email_Verification({super.key});

  @override
  State<email_Verification> createState() => _email_VerificationState();
}

class _email_VerificationState extends State<email_Verification> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Forgot Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),border: Border.all(color: Colors.grey
              ),),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height *0.02,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Please enter 4 digit code sent to',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),textAlign: TextAlign.start,),
                Text(' bianca@example.com.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: appcolor.greenColor),textAlign: TextAlign.start,),
              ],
            ),
          ),
          SizedBox(height: size.height *0.15,),
          Center(
            child: Pinput(

              length: 4,
              showCursor: true,
              onCompleted: (pin) {
                setState(() {
                  //  pinMatch  = pin;
                });

              },
            ),
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              longtext('Didn’t receive any code.', 12, Colors.grey,12,38),
              longtext('Resend Code', 12, appcolor.greenColor,12,38),
            ],
          ),
          SizedBox(height: size.height *0.05,),
          InkWell(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>newPassword()));
            },
            child: Center(
              child: Container(
                height: 54,
                width: size.width*0.85,
                decoration: BoxDecoration(
                  color: appcolor.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: sorttext('Continue',16,appcolor.white,38,34),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

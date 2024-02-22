import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';

import '../../widget/Text.dart';
import 'email_verification.dart';

class forgotPasswrod extends StatefulWidget {
  const forgotPasswrod({super.key});

  @override
  State<forgotPasswrod> createState() => _forgotPasswrodState();
}

class _forgotPasswrodState extends State<forgotPasswrod> {
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
        children: [
          SizedBox(height: size.height *0.25,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Enter your email and we will send you a Otp to reset your password.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xff8F92A1)),textAlign: TextAlign.start,),
          ),
          SizedBox(height: size.height *0.05,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              keyboardType: TextInputType.name,

              decoration: InputDecoration(
                hintText: "Your Email",
              ),
            ),
          ),
          SizedBox(height: size.height *0.05,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>email_Verification()));
            },
            child: Container(
              height: 54,
              width: size.width*0.85,
              decoration: BoxDecoration(
                color: appcolor.greenColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: sorttext('Send',16,appcolor.white,38,34),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';

import '../../widget/Text.dart';

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
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(width: 10,),
              InkWell(
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
              SizedBox(width: 20,),
              Text('Forgot Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
            ],
          ),
          SizedBox(height: size.height *0.1,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Enter your email and we will send you a Otp to reset your password.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xff8F92A1)),textAlign: TextAlign.start,),
          ),
          SizedBox(height: size.height *0.1,),
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
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>StartedPage()));
            },
            child: Container(
              height: 54,
              width: size.width*0.85,
              decoration: BoxDecoration(
                color: appcolor.greenColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: sorttext('Send',20,appcolor.white,38,34),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

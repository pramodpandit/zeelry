import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';

import '../../widget/Text.dart';

class newPassword extends StatefulWidget {
  const newPassword({super.key});

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Create New Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
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
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height *0.02,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10),
            child: Text('Your new password must be different from previous passwords.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),textAlign: TextAlign.start,),
          ),
          SizedBox(height: size.height *0.15,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "New Password",

              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Confirm Password",

              ),
            ),
          ),

          SizedBox(height: size.height *0.05,),
          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>StartedPage()));
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
                  child: sorttext('Reset Password',16,appcolor.white,38,34),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

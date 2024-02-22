import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../topup_screens/select_method.dart';
import '../widget/Text.dart';
import 'ForgotPassword/forgotPassword.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: size.height *0.1,),
          Center(
            child: SizedBox(
                height: 58,
                width: 279,
                child: Image.asset(image.logo,)),
          ),
          SizedBox(height: size.height * 0.16,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Your Email",
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Password",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPasswrod()));
                  },
                  child: Text('Forgot Password?',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
              SizedBox(width: 15,),
            ],
          ),
          SizedBox(height: size.height*0.03,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectMethod()));
            },
            child: Container(
              height: 54,
              width: size.width*0.85,
              decoration: BoxDecoration(
                color: appcolor.greenColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: sorttext('Login',20,appcolor.white,38,34),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New to Zeelry? ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
              Text(' Sign up',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: appcolor.backGroundColor),)
            ],
          )

        ],
      ),
    );
  }
}

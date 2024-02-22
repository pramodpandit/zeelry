import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../widget/Text.dart';
import 'StartedPage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height *0.1,),
            Center(
              child: SizedBox(
                  height: 58,
                  width: 279,
                  child: Image.asset(image.logo,)),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                keyboardType: TextInputType.name,
        
                decoration: InputDecoration(
                    hintText: "Name",
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                keyboardType: TextInputType.name,
        
                decoration: InputDecoration(
                    hintText: "Email",
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
        
                decoration: InputDecoration(
                  hintText: "Phone No",
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                keyboardType: TextInputType.name,
        
                decoration: InputDecoration(
                  hintText: "Referal Code",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Optional',style: TextStyle(color: appcolor.backGroundColor,),),
                SizedBox(width: 15,)
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                maxLines: 5,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Address",
                ),
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StartedPage()));
              },
              child: Container(
                height: 54,
                width: size.width*0.85,
                decoration: BoxDecoration(
                  color: appcolor.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: sorttext('Register & Place Order',20,appcolor.white,38,34),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

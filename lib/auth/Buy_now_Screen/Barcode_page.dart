import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../../widget/Text.dart';
import '../Register.dart';

class barCodePage extends StatefulWidget {
  const barCodePage({super.key});

  @override
  State<barCodePage> createState() => _barCodePageState();
}

class _barCodePageState extends State<barCodePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        SizedBox(height: size.height *0.1,),
        Center(
          child: SizedBox(
          height: 58,
              width: 279,
              child: Image.asset(image.logo,)),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Text('Scan the Barcode printed under the top lid of your ring box, or manually enter its numeric code below',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff8F92A1)),textAlign: TextAlign.start,),
        ),
        SizedBox(height: 40,),
        Stack(
          children: [
            Image.asset(image.rectangleImage),
            Positioned(
                top: 40,left: 50,
                child: Image.asset(image.barCode))
          ],
        ),
        SizedBox(height: size.height *0.05,),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: TextFormField(
            keyboardType: TextInputType.number,

            decoration: InputDecoration(
                hintText: "Enter Barcode",
                suffixIcon: Icon(Icons.cancel)
            ),
          ),
        ),
        SizedBox(height: size.height *0.05,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
          },
          child: Container(
            height: 54,
            width: size.width*0.5,
            decoration: BoxDecoration(
              color: appcolor.greenColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: sorttext('Next',16,appcolor.white,38,34),
            ),
          ),
        ),
      ],),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

class demis extends StatefulWidget {
  const demis({super.key});
  @override
  State<demis> createState() => _demisState();
}

class _demisState extends State<demis> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(microseconds: 10),(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>splashScreen()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(color:appcolor.redColor,),),
    );
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
    //  Get.off(firstui());
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
        height: size.height,
        width: size.width,
        color: appcolor.black,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Image.asset(image.logo,)),
            )));
  }
}
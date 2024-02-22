import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/scan_to_pay/summary_transaction.dart';

class ScanToPay extends StatefulWidget {
  const ScanToPay({super.key});

  @override
  State<ScanToPay> createState() => _ScanToPayState();
}

class _ScanToPayState extends State<ScanToPay> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() {
      SummaryTransaction().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.backGroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              50.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap : () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      height : 40,
                      width: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Text("Scan to Pay",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap : () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      height : 40,
                      width: 40,
                      child: Center(child: FaIcon(FontAwesomeIcons.circleQuestion,color: Colors.white,size: 15,)),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 10),
              60.height,
              SizedBox(
                  height: 400,
                  child: Image.asset("assets/QR Code.png",fit: BoxFit.fitHeight,))
            ],
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[
                20.height,
                Center(
                  child: Container(
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                ),
                20.height,
                Text("Payment with QR Code",style: GoogleFonts.dmSans(fontSize: 17,fontWeight: FontWeight.bold),),
                10.height,
                Text("Hold the code inside the frame, it will be scanned automatically",style: GoogleFonts.dmSans(fontSize: 14),),
                40.height,
              ],
            ).paddingSymmetric(horizontal: 20),
          )
        ],
      ),
    );
  }
}

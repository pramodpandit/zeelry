import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class ScanPaymentSuccess extends StatelessWidget {
  const ScanPaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/Background.png",fit: BoxFit.fitWidth,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              100.height,
              Text("Payment Receipt",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              10.height,
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    20.height,
                    Image.asset("assets/Icon Success.png"),
                    10.height,
                    Text("Top Up Success",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 17),),
                    5.height,
                    Text("Your payment for Starbucks Coffee has been successfully done",style: GoogleFonts.dmSans(),textAlign: TextAlign.center).paddingSymmetric(horizontal: 20),
                    10.height,
                    Text("Total Payment"),
                    10.height,
                    Text("₹132.00",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 25),),
                    20.height,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Payment for",style: GoogleFonts.dmSans(),)).paddingSymmetric(horizontal: 20),
                    10.height,
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child : ListTile(
                          title: Text("Starbucks Coffee"),
                          subtitle: Text("Dec 2, 2020 3:02 PM"),
                          leading: CircleAvatar(),
                        )
                    ).paddingSymmetric(horizontal: 20),
                    20.height,
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ElevatedButton(onPressed: () {
                          // AddCardConfirm().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
                        }, child: Text("Done",style: GoogleFonts.dmSans(color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
                          ),
                        )
                    ),
                    10.height,
                  ],
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}

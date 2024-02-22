import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/topup_screens/select_method.dart';

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          40.height,
          Align(
            alignment: Alignment.center,
            child: Text("Refer & Earn",style: GoogleFonts.dmSans(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          20.height,
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Container(
                    padding : EdgeInsets.all(10),
                    color: Color(0xFf00373E),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Invite Friends to\nZeelry Ring\nPayments",style: GoogleFonts.dmSans(fontSize: 20,color: Colors.white),),
                        Image.asset("assets/Ring 1.png")
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFBBFBD4),
                    child: Column(
                      children: [
                        10.height,
                        Text("VIJAY0001",style: GoogleFonts.dmSans(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF248A28)),),
                        10.height,
                        Divider(color: Colors.grey.shade50,),
                        10.height,
                        Text("You Have invited 7 people till date",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold),),
                        20.height,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ).paddingSymmetric(horizontal: 30),
          20.height,
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: () {
                SelectMethod().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
              }, child: Text("Share your referral code",style: GoogleFonts.dmSans(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
                ),
              )
          ).paddingSymmetric(horizontal: 30)
        ],
      ),
    );
  }
}

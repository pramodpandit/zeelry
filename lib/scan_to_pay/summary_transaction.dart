import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/scan_to_pay/payment_password.dart';

class SummaryTransaction extends StatelessWidget {
  const SummaryTransaction({super.key});

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
                  Text("Summary Transaction",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
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
              40.height,
              SizedBox(
                  // height: 400,
                  child: Image.asset("assets/Icon3.png",fit: BoxFit.fitHeight,),
              ),
              10.height,
              Text("Starbucks Coffee",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
              10.height,
              Text("Payment on Dec 2, 2020",style: GoogleFonts.dmSans(color: Colors.amber),),
              20.height,
              Text("₹15.00",style: GoogleFonts.dmSans(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              10.height,
              Container(
                decoration: BoxDecoration(
                    color: Color(0x594CD080),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: ListTile(
                  title: Text("Top up using any credit card just cost 2%",style: GoogleFonts.dmSans(fontSize: 15,color: Colors.white),),
                  leading: Icon(Icons.error_outline,color: Colors.white,),
                ),
              ).paddingSymmetric(horizontal: 20),
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
                Text("Choose Cards",style: GoogleFonts.dmSans(fontSize: 17,fontWeight: FontWeight.bold),),
                10.height,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text("Saved Card"),
                    subtitle: Text("0318-1608-2105"),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
                10.height,
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(onPressed: () {
                      PaymentPassword().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
                    }, child: Text("Proceed to Pay",style: GoogleFonts.dmSans(color: Colors.white),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
                      ),
                    )
                ),
                20.height,
              ],
            ).paddingSymmetric(horizontal: 20),
          ),
        ],
      ),
    );
  }
}

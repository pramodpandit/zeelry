import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/topup_screens/credit_card.dart';

class SelectMethod extends StatelessWidget {
  const SelectMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/Background.png",fit: BoxFit.fitWidth,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              70.height,
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
                  Text("Select Method",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
                  40.width,
                ],
              ).paddingSymmetric(horizontal: 10),
              10.height,
              Text("Select top up methods",style: GoogleFonts.dmSans(fontSize: 17,color: Colors.white),).paddingAll(10),
              20.height,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: Column(
                    children: [
                      20.height,
                      Container(
                        height: 4,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      20.height,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: ListTile(
                          onTap: () {
                            CreditCard().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
                          },
                          title: Text("Credit Card",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 14),),
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset("assets/Icon.png"),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                        ),
                      ).paddingSymmetric(horizontal: 10,vertical: 5),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: ListTile(
                          title: Text("Bank Transfer",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 14),),
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset("assets/Icon2.png"),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                        ),
                      ).paddingSymmetric(horizontal: 10,vertical: 5),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}

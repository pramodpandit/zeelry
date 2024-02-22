import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/topup_screens/add_credit_card.dart';

class CreditCard extends StatelessWidget {
  TextEditingController amountController = TextEditingController();
  CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
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
                          Navigator.pop(context);
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
                      Text("Top Up with Credit Card",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
                      40.width,
                    ],
                  ).paddingSymmetric(horizontal: 10),
                  ListTile(
                    titleTextStyle: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 17),
                    subtitleTextStyle: GoogleFonts.dmSans(fontSize: 13,color: Colors.white),
                    title: Text("Credit Card"),
                    subtitle: Text("Choose your credit card"),
                    trailing: InkWell(
                      onTap : () {
                        // Navigator.pop(context);
                      },
                      child: Container(
                        height : 40,
                        width: 40,
                        child: Icon(Icons.add,color: Colors.white,size: 20,),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(20),
                    color: Color(0xFF4CD080),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          10.height,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Balance",style: GoogleFonts.ibmPlexMono(color: Colors.white),),
                                  5.height,
                                  Text("₹26,968.00",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                                ],
                              ),
                              Image.asset("assets/Logo.png",width: 30,),
                            ],
                          ),
                          30.height,
                          Row(
                            children: [
                              Image.asset("assets/Chip.png"),
                              20.width,
                              Text(".... .... .... ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                              Text("3986",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontSize: 16),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Set amount",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold),),
                      Text("How much would you like to top up?",style: GoogleFonts.dmSans(),),
                      TextFormField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          prefix: Icon(Icons.currency_rupee),
                        ),
                      ),
                      10.height,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: () {
                            amountController.text = "100";
                          }, child: Text("₹100.00",style: GoogleFonts.dmSans(color: Color(0xFF4CD080)),),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal:10,vertical: 5)),
                            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white)
                          ),
                          ),
                          ElevatedButton(onPressed: () {
                            amountController.text = "250";
                          }, child: Text("₹250.00",style: GoogleFonts.dmSans(color: Color(0xFF4CD080)),),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal:10,vertical: 5)),
                                backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white)
                            ),),
                          ElevatedButton(onPressed: () {
                            amountController.text = "500";
                          }, child: Text("₹500.00",style: GoogleFonts.dmSans(color: Color(0xFF4CD080)),),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal:10,vertical: 5)),
                                backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white)
                            ),)
                        ],
                      )
                      
                    ],
                  ).paddingSymmetric(horizontal: 20),
                ],
              )
            ],
          ),
        ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(onPressed: () {
              AddCreditCard().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
            }, child: Text("Top Up Now",style: GoogleFonts.dmSans(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
              ),
            )
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextButton(onPressed: () {
                Navigator.of(context);
              }, child: Text("Back to home",style: GoogleFonts.dmSans(color: Colors.black),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.transparent),
                ),
              )
          ),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/topup_screens/payment_success.dart';

class AddCardConfirm extends StatelessWidget {
  const AddCardConfirm({super.key});

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
                  100.height,
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     InkWell(
                  //       onTap : () {
                  //         Navigator.pop(context);
                  //       },
                  //       child: Container(
                  //         height : 40,
                  //         width: 40,
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(left: 5.0),
                  //           child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,),
                  //         ),
                  //         decoration: BoxDecoration(
                  //             border: Border.all(width: 1,color: Colors.grey),
                  //             borderRadius: BorderRadius.circular(10)
                  //         ),
                  //       ),
                  //     ),
                  //     Text("Add New Card",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
                  //     40.width,
                  //   ],
                  // ).paddingSymmetric(horizontal: 10),
                  // 10.height,
                  // Text("Scan completed, now verify your data",style: GoogleFonts.dmSans(fontSize: 17,color: Colors.white),).paddingAll(10),
                  // 20.height,
                  Container(
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
                        Text("Add Card Confirm",style: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 17),),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Your card",style: GoogleFonts.dmSans(),)).paddingSymmetric(horizontal: 10),
                        Card(
                          margin: EdgeInsets.all(10),
                          color: Color(0xFFFFAE58),
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
                                        Text("₹0",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                                      ],
                                    ),
                                    Image.asset("assets/Logo.png",width: 30,),
                                  ],
                                ),
                                20.height,
                                Row(
                                  children: [
                                    Image.asset("assets/Chip.png"),
                                    10.width,
                                    Text("3567 8756 4567 ",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontSize: 16),),
                                    Text("3986",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontSize: 16),)
                                  ],
                                ),
                                30.height,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("BIANCA COOPER",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontSize: 14),),
                                    Text("11/24",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontSize: 14),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0x594CD080),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: ListTile(
                            title: Text("Top up using any credit card just cost 2%",style: GoogleFonts.dmSans(fontSize: 10,color: Color(0xFF105D38)),),
                            leading: Icon(Icons.error_outline,color: Color(0xFF105D38),),
                          ),
                        ),
                        20.height,
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0x594CD080),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ListTile(
                            title: Text("Automatically activate after opening an account",style: GoogleFonts.dmSans(fontSize: 10,color: Color(0xFF105D38)),),
                            leading: Icon(Icons.credit_card,color: Color(0xFF105D38),),
                            trailing: Switch(
                              activeColor: Color(0xFF105D38),
                              value: true,
                              onChanged: (value) {

                              },
                            ),
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 20),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text("Cancel",style: GoogleFonts.dmSans(color: Colors.black45),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey.shade200),
                  ),
                )
            ),
            10.width,
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: ElevatedButton(onPressed: () {
                  PaymentSuccess().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
                }, child: Text("Add Card",style: GoogleFonts.dmSans(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
                  ),
                )
            ),
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/topup_screens/add_card_confirm.dart';

class AddCreditCard extends StatelessWidget {
  const AddCreditCard({super.key});

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
                      Text("Add New Card",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
                      40.width,
                    ],
                  ).paddingSymmetric(horizontal: 10),
                  10.height,
                  Text("Scan completed, now verify your data",style: GoogleFonts.dmSans(fontSize: 17,color: Colors.white),).paddingAll(10),
                  20.height,
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
                        Card(
                          margin: EdgeInsets.all(20),
                          color: Colors.grey.shade300,
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
                                        Text("",style: GoogleFonts.ibmPlexMono(color: Colors.white),),
                                        Text("",style: GoogleFonts.ibmPlexMono(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                                      ],
                                    ),
                                    Image.asset("assets/Logo.png",width: 30,),
                                  ],
                                ),
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
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Cardholder Name",
                            hintText: "Bianca Cooper"
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Card Number",
                            hintText: "1956 7561 3716 2356",
                            suffix: Image.asset("assets/cardnumber.png",width: 25,)
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Expiry Date",
                                  hintText: "11/24",
                                ),
                              ),
                            ),
                            10.width,
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: "3-digit CVV",
                                  hintText: "531"
                                ),
                              ),
                            ),
                          ],
                        )
          
                      ],
                    ).paddingSymmetric(horizontal: 20),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(onPressed: () {
              AddCardConfirm().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
            }, child: Text("Continue",style: GoogleFonts.dmSans(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
              ),
            )
        )
    );
  }
}

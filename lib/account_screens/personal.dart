import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/widget/blockButton.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          40.height,
          Align(
              alignment: Alignment.center,
              child: Text("My Profile",style: GoogleFonts.dmSans(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          20.height,
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent
            ),
            child: Center(child: FaIcon(FontAwesomeIcons.user)),
          ),
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Bianca Cooper"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email Address",
                    hintText: "bianca@example.com"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Phone No.",
                    hintText: "98458968968"
                ),
              ),
            ],
          ).paddingAll(10),
        ],
      ),
        floatingActionButton: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(onPressed: () {
              // PaymentSuccess().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
            }, child: Text("Update",style: GoogleFonts.dmSans(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFF4CD080)),
              ),
            )
        )
    );
  }
}

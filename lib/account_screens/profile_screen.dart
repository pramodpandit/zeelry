import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                      Text("My Profile",style: GoogleFonts.dmSans(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold)),
                      40.width,
                    ],
                  ).paddingSymmetric(horizontal: 10),
                  ListTile(
                    titleTextStyle: GoogleFonts.dmSans(fontWeight: FontWeight.bold,fontSize: 17),
                    subtitleTextStyle: GoogleFonts.dmSans(fontSize: 13,color: Colors.white),
                    title: Text("Bianca Cooper"),
                    subtitle: Text("(480) 555-0103\nbianca@example.com"),
                    leading: CircleAvatar(),
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
                      ListTile(
                        title: Text("Personal"),
                        leading: FaIcon(FontAwesomeIcons.userCheck),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                      ),
                      ListTile(
                        title: Text("Privacy & Policy"),
                        leading: Icon(Icons.policy),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                      ),
                      ListTile(
                        title: Text("About Us"),
                        leading: FaIcon(FontAwesomeIcons.circleQuestion),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                      ),ListTile(
                        title: Text("Refer & Earn"),
                        leading: FaIcon(FontAwesomeIcons.question),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                      ),
                      ListTile(
                        title: Text("Logout"),
                        leading: Icon(Icons.logout),
                        trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 20),
                ],
              )
            ],
          ),
        ),
    );
  }
}

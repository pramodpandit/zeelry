import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../widget/Text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
            height: size.height*0.1,
            width: size.width *0.5,
            child: Image.asset(image.logo)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    longtext('Hello Andre',18,appcolor.black,18,34),
                    sorttext('Your available balance,',14,appcolor.greyColor,14,34),
                  ],
                ),
                longtext('₹15,901',26,appcolor.black,26,34),


              ],
            ),
            20.height,
            Container(
              height: 84,
              width: size.width*0.9,
              decoration: BoxDecoration(
                color: Color(0xff4CD080),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset(image.icon1),
                      Text('Transfer',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)
                    ],
                  ),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset(image.icon3),
                      Text('Top Up',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)
                    ],
                  ),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset(image.icon4),
                      Text('History',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)
                    ],
                  ),
                ],
              ),

            ),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                longtext('Promo & Discount',14,appcolor.black,14,34),
                longtext('See More',14,appcolor.greenColor,14,34),


              ],
            ),
            20.height,

            CarouselSlider.builder(
                itemCount: 2,
                itemBuilder: (context,index, realindex){
                  return Container(
                    height: 170,
                    width: size.width*0.9,
                    decoration: BoxDecoration(
                        color: index ==0?Color(0xff00373E):Color(0xffFFD2A6),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              longtext('30% OFF',14,appcolor.white,14,34),
                              longtext('Black Friday deal',20,appcolor.white,20,34),
                              20.height,
                              SizedBox(
                                  width: size.width *0.5,
                                  child: Text('Get discount for every topup, transfer and payment',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: appcolor.greyColor),textAlign: TextAlign.start,))
                            ],
                          ),
                          Stack(
                            children: [
                              Image.asset(image.rectangleIcon,fit: BoxFit.cover,),
                              Positioned(
                                  top: 45,
                                  left: 40,
                                  child: longtext('30%',30,appcolor.white,20,34)),

                            ],
                          )

                        ],
                      ),
                    ),

                  );
                },
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: false,
                    aspectRatio: 2.0,
                    viewportFraction: 1.0,
                    initialPage: 0,

                )),

          ],
        ),
      ),
    );
  }
}

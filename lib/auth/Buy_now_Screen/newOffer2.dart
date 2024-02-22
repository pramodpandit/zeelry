import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../../widget/Text.dart';
import 'Barcode_page.dart';

class newOffer2 extends StatefulWidget {
  const newOffer2({super.key});

  @override
  State<newOffer2> createState() => _newOffer2State();
}

class _newOffer2State extends State<newOffer2> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: appcolor.backGroundColor,
        title: longtext('New Order',17,Colors.white,17,38),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      
      body: Container(
        height: size.height ,
       width: size.width,
       color: appcolor.white,
        child: Column(
          children: [
            SizedBox(height: 40,),
            longtext('Pricing',24,appcolor.black,34,38),
            SizedBox(height: 5,),
            sorttext('Maximum Retail Price',16,Color(0xff8F92A1),38,34),
            SizedBox(height: 10,),
            longtext('₹7000',32,appcolor.backGroundColor,34,38),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text('Grab this early bird offer till it last by paying only ₹7000 today and no recurring annual charges over the validity period of the product',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: appcolor.black,),textAlign: TextAlign.start,),
            ),
            SizedBox(height: 20,),
            listTile('₹200 Casback credited on registration'),
            SizedBox(height: 5,),
            listTile('Lorem ipsum dolor sit amet, consectetur '),
            SizedBox(height: 5,),
            listTile('Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
            SizedBox(height: 5,),
            listTile('Lorem ipsum dolor sit amet, consectetur'),
            SizedBox(height:size.height *0.1,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>barCodePage()));
              },
              child: Container(
                height: 65,
                width: size.width*0.85,
                decoration: BoxDecoration(
                  color: appcolor.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: sorttext('Buy Now',20,appcolor.white,38,34),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget listTile(String text){
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Icon(Icons.check_circle,color: appcolor.greenColor,),
            SizedBox(width: 10,),
            Expanded(child: Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,),overflow: TextOverflow.ellipsis,maxLines: 2,)),
          ],

        ),
      ),
    );
  }
}

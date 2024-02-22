import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import 'Text.dart';

class passbook extends StatefulWidget {
  const passbook({super.key});

  @override
  State<passbook> createState() => _passbookState();
}

class _passbookState extends State<passbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title:  Text('Passbook',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),border: Border.all(color: Colors.black
              ),),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 40,),
            longtext('Recent Expenses',14,Colors.black,38,34),
            SizedBox(height: 10,),
            listNotification('Starbucks Coffee',Color(0xffFFAE58),Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM',1,'+₹156'),
            listNotification('Use BLCK10 Promo Code',Colors.black,Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM',0,'-₹345'),
            listNotification('Starbucks Coffee',appcolor.backGroundColor,Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM',1,'+₹543'),
            listNotification('250 top up successfuly added',Colors.black,Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM',1,'+₹897'),
            listNotification('Starbucks Coffee',Color(0xffFFAE58),Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM',0,'-₹900'),

          ],
        ),
      ),
    );
  }
  Widget listNotification(String title,Color background,Widget Image,String subtitle,int value,String trai){
    return ListTile(
      title: Text(title,style: TextStyle(fontWeight: FontWeight.w500,color:appcolor.black),),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(12)),border: Border.all(color: Colors.grey
        ),),
        child: Image,
      ),
      subtitle: Text(subtitle,style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xff8F92A1)),),
      trailing: Text(trai,style: TextStyle(fontWeight: FontWeight.w700,color:value ==1?Colors.green:Colors.red,fontSize: 16),),
    );
  }
}

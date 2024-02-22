import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../widget/Text.dart';

class notificationUser extends StatefulWidget {
  const notificationUser({super.key});

  @override
  State<notificationUser> createState() => _notificationUserState();
}

class _notificationUserState extends State<notificationUser> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appcolor.backGroundColor,
      appBar: AppBar(
        backgroundColor: appcolor.backGroundColor,
        centerTitle: true,
        title:  Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
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
                borderRadius: BorderRadius.all(Radius.circular(12)),border: Border.all(color: Colors.grey
              ),),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height *0.75,
        decoration: BoxDecoration(
          color: appcolor.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50))
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              sorttext('YESTERDAY',14,Color(0xff8F92A1),38,34),
              SizedBox(height: 10,),
              listNotification('Daily Cashback',Color(0xffFFAE58),Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM'),
              listNotification('Use BLCK10 Promo Code',Color(0xffFFD2A6),Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM'),
              listNotification('Cyber Monday Deal',appcolor.backGroundColor,Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM'),
              listNotification('250 top up successfuly added',Color(0xffFFAE58),Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM'),
              listNotification('Use NOV10 Promo Code',Color(0xffFFAE58),Image.asset(image.notification1,),'12 Feb 2024 -8:00 AM'),
            ],
          ),
        ),
      ),

    );
  }
  Widget listNotification(String title,Color background,Widget Image,String subtitle){
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
    );
  }
}

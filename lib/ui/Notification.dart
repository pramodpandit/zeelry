import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';

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
        height: size.height *0.85,
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
              sorttext('YESTERDAY',14,Color(0xff8F92A1),38,34)
            ],
          ),
        ),
      ),

    );
  }
  Widget listNotification(String title){
    return ListTile(
      title: Text(title,style: TextStyle(),),
    );
  }
}

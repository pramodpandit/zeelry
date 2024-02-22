import 'package:flutter/material.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/content/image.dart';

import '../widget/Text.dart';


class firstui extends StatefulWidget {
  const firstui({super.key});
  @override
  State<firstui> createState() => _firstuiState();
}

class _firstuiState extends State<firstui> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(child: Image.asset(image.firstUiImage)),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.35,
        decoration: BoxDecoration(
          gradient: appcolor.gradient,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30)
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 15),
              child: longtext('Enjoy the new experience of chatting with global friends',20,Colors.white,38,38),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: sorttext('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."',15,Colors.white,26,26),
            ),
            Spacer(),
            InkWell(
              onTap: (){
                //Get.to(secondui());
              },
              child: Container(
                height: 65,
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [new BoxShadow(
                      color: appcolor.redColor,
                      blurRadius:5.0
                    ),]
                ),
                child: Center(
                    child: longtext('Start Messaging',23,appcolor.redColor,38,34),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

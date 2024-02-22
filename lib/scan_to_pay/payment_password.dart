import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';
import 'package:untitled/content/appcolor.dart';
import 'package:untitled/scan_to_pay/scan_payment_success.dart';

import '../../widget/Text.dart';

class PaymentPassword extends StatefulWidget {
  const PaymentPassword({super.key});

  @override
  State<PaymentPassword> createState() => _PaymentPasswordState();
}

class _PaymentPasswordState extends State<PaymentPassword> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Enter Ring Pin',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
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
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          SizedBox(height: size.height *0.3,),
          Center(
            child: Pinput(

              length: 4,
              obscuringCharacter:'*',
              showCursor: true,
              onCompleted: (pin) {
                setState(() {
                  //  pinMatch  = pin;
                });

              },
            ),
          ),
          SizedBox(height: 10,),

          SizedBox(height: size.height *0.05,),
          InkWell(
            onTap: (){
              ScanPaymentSuccess().launch(context,pageRouteAnimation: PageRouteAnimation.SlideBottomTop);
            },
            child: Center(
              child: Container(
                height: 54,
                width: size.width*0.85,
                decoration: BoxDecoration(
                  color: appcolor.greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: sorttext('Confim Ring Pin',16,appcolor.white,38,34),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

Widget longtext(String text, double val, Color v,double longpixel,double ipad){
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        final width = constraints.maxWidth;
        var fontSize = 16.0;
        if (width <= 480) {
          fontSize = val;
        } else if (width > 480 && width <= 960) {
          fontSize = ipad;
        } else {
          fontSize = longpixel;
        }
        return Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: fontSize,color: v),textAlign: TextAlign.center,);
      });}

 Widget sorttext(String text, double val, Color v,double longPixel,double ipad){
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;
        var fontSize = 16.0;
        if (width <= 480) {
          fontSize = val;
        } else if (width > 480 && width <= 960) {
          fontSize = ipad;
        } else {
          fontSize = longPixel;
        }
        return Text(text,style: TextStyle(fontWeight: FontWeight.w300,fontSize:fontSize,color: v),textAlign: TextAlign.center,);
      },
     );
}
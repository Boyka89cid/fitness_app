
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppSVGWidget{

  static svgPicture({required String path, required double height, required double width, required Color? color}){
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      colorFilter: color != null? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }
}
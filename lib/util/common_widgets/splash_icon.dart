import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcs_accounting_flutter_web/util/constants/assets_constant_string.dart';

class SplashIcon extends StatelessWidget {
  const SplashIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        height: 80.h,
        width:150.h,
        fit: BoxFit.fill,
        image: AssetImage(
          AssetConstant.splashImg,
        ),
      ),
    );
  }
}

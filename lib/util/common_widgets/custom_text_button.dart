
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/color_constant.dart';

class CustomTextButtons extends StatelessWidget {
  CustomTextButtons({
    super.key,
    required this.onpressed,
    required this.iconPath,
    required this.title,

  });

  Function() onpressed;
  String iconPath;//AssetConstant.manualSvg
  String title;// StringConstant.exploreManual

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
        backgroundColor: Colors.white,
        side: const BorderSide(color: AppColorConstants.greyColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath, // Path to your SVG file
            width: 12.h, // Set width
            height: 12.h,
          ),
          SizedBox(
            width: 3.h,
          ),
          Text(
              title,
              style: TextStyle(
                fontSize: 10.h,
                color: AppColorConstants.black,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis
          ),
        ],
      ),
    );
  }
}

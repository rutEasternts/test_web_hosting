
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mcs_accounting_flutter_web/util/constants/color_constant.dart';

class InputTextField extends StatelessWidget {
  InputTextField({
    super.key,
    required this.labelText
  });

  String labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.h),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColorConstants.hintTextGeryColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColorConstants.hintTextGeryColor, // Border color when the field is focused
            width: 1.w, // Border width
          ),
          borderRadius: BorderRadius.circular(1.w),
        ),
      ),
      style: TextStyle(
          color: AppColorConstants.black, fontSize: 12.h),
    );
  }
}

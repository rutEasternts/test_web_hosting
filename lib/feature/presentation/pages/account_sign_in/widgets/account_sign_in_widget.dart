
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcs_accounting_flutter_web/util/constants/color_constant.dart';
import 'package:mcs_accounting_flutter_web/util/constants/string_constants.dart';
import 'package:mcs_accounting_flutter_web/util/constants/assets_constant_string.dart';
import 'package:mcs_accounting_flutter_web/util/common_widgets/input_text_field.dart';

import 'package:mcs_accounting_flutter_web/util/common_widgets/custom_text_button.dart';

class AccountSignInWidget extends StatelessWidget {
  AccountSignInWidget({super.key,required this.isMobile});

  bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 80.h,
                      width: 180.h,
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetConstant.splashImg,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      StringConstant.mcsAccountSignIn,
                      style: TextStyle(
                          fontSize: 23.h,
                          fontWeight: FontWeight.w500,
                          color: AppColorConstants.black),
                         textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      StringConstant.accountSignInDescription,
                      style: TextStyle(
                          fontSize: 10.h,
                          fontWeight: FontWeight.w500,
                          color: AppColorConstants.greyColor),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 35.h),
                    SizedBox(
                      height: 40.h,
                      child: InputTextField(labelText: StringConstant.username,)
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 40.h,
                      child: InputTextField(labelText: StringConstant.password,)
                    ),
                    SizedBox(height: 35.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        StringConstant.signIn,
                        style: TextStyle(
                          fontSize: 15.h,
                          color: AppColorConstants.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: AppColorConstants.hintTextGeryColor,
                        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: AppColorConstants.hintTextGeryColor),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.h),),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            AssetConstant.licenseSvg, // Path to your SVG file
                            width: 14.h, // Set width
                            height: 14.h,
                          ),
                          SizedBox(
                            width: 6.h,
                          ),
                          Flexible(
                            child: Text(
                              StringConstant.licenseValid,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.h,
                                color: AppColorConstants.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          isMobile? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButtons(
                    onpressed: (){

                    },
                    iconPath: AssetConstant.quickSupportSvg,
                    title: StringConstant.quickSupport,
                  ),
                  SizedBox(
                    width: 15.h,
                  ),
                  CustomTextButtons(
                    onpressed: (){

                    },
                    iconPath: AssetConstant.manualSvg,
                    title: StringConstant.exploreManual,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "${StringConstant.mcsSuratNil}\n${StringConstant.version} 0604000",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.h,
                  fontWeight: FontWeight.w500,
                  color: AppColorConstants.black,
                ),
              ),
            ],
          ) :
          Row(
            children: [
              Text(
                "${StringConstant.mcsSuratNil}\n${StringConstant.version} 0604000",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 10.h,
                  fontWeight: FontWeight.w500,
                  color: AppColorConstants.black,
                ),
              ),
              const Spacer(),
              CustomTextButtons(
                onpressed: (){

                },
                iconPath: AssetConstant.manualSvg,
                title: StringConstant.exploreManual,
              ),
              SizedBox(width: 15.h,),
              CustomTextButtons(
                onpressed: (){

                },
                iconPath: AssetConstant.quickSupportSvg,
                title: StringConstant.quickSupport,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


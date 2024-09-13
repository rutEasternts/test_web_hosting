
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in.dart';
import 'package:mcs_accounting_flutter_web/util/common_widgets/custom_text_button.dart';
import 'package:mcs_accounting_flutter_web/util/constants/color_constant.dart';
import 'package:mcs_accounting_flutter_web/util/constants/string_constants.dart';
import 'package:mcs_accounting_flutter_web/util/constants/assets_constant_string.dart';

import 'package:mcs_accounting_flutter_web/util/common_widgets/input_text_field.dart';

import '../../../../../main.dart';
import '../../../../../router/route_constant.dart';
// import 'dart:js' as js;

import '../../../../../router/routes.dart';

class CloudSignInWidget extends StatelessWidget {
  CloudSignInWidget({super.key,required this.isMobile});

  bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 15.0.h),
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
                      image: AssetImage(
                        AssetConstant.splashImg,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      StringConstant.mcsCloudSignIn,
                      style: TextStyle(
                          fontSize: 25.h,
                          fontWeight: FontWeight.w500,
                          color: AppColorConstants.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      StringConstant.cloudSignInDesc,
                      style: TextStyle(
                          fontSize: 10.h,
                          fontWeight: FontWeight.w500,
                          color: AppColorConstants.greyColor),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 35.h),
                    SizedBox(
                      height: 40.h,
                      child: InputTextField(labelText: StringConstant.clientId,),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 40.h,
                      child:InputTextField(labelText: StringConstant.accountNo,)
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetConstant.infoSvg,
                          width: 12.h, // Set width
                          height: 12.h,
                        ),
                        SizedBox(width: 3.h),
                        Text(
                          StringConstant.enter12DigitAccountNo,
                          style: TextStyle(
                              fontSize: 10.h,
                              color: AppColorConstants.greyTextColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 35.h),
                    ElevatedButton(
                      onPressed: () {


                        // context.go(AppRouterPath.accountSignIn);


                        // GoRouter.of(context).pushReplacementNamed(RouteNames.routeNameAccountSignIn);

                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSignIn()));

                        // GoRouter.of(context).pushReplacementNamed(RouteNames.routeNameAccountSignIn);

                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSignIn()));

                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSignIn()));
                        // Navigator.pushNamed(context, '/account_sign_in');

                        context.go(AppRouterPath.accountSignIn);

                        // context.push(AppRouterPath.accountSignIn);
                        // AppRouter.goRouter.push(AppRouterPath.accountSignIn);

                        // Navigator.pushNamed(context, '/account_sign_in');

                        // // AppRouter.goRouter.goNamed(MyAppRouteNameConstants.routeNameAccountSignIn);  // this i
                        // js.context.callMethod('setDocumentTitle', [RouteNames.routeNameCloudSignIn]); // will change the name on tab bar
                      },
                      child: Text(
                        StringConstant.signIn,
                        style: TextStyle(
                          fontSize: 15.h,
                          color: AppColorConstants.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          isMobile?
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextButtons(
                  onpressed: (){},
                  iconPath:  AssetConstant.quickSupportSvg,
                  title: StringConstant.quickSupport),
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
          ) : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              CustomTextButtons(
                  onpressed: (){},
                  iconPath:  AssetConstant.quickSupportSvg,
                  title: StringConstant.quickSupport),
            ],
          ),
        ],
      ),
    );
  }
}


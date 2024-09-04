

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcs_accounting_flutter_web/util/constants/assets_constant_string.dart';

import '../../../../util/common_widgets/splash_icon.dart';

class SplashWeb extends StatefulWidget {
  const SplashWeb({super.key,});

  @override
  State<SplashWeb> createState() => _SplashWebState();
}

class _SplashWebState extends State<SplashWeb> {

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashIcon(),
    );
  }
}

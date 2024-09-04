import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcs_accounting_flutter_web/util/common_widgets/responsive_layout_widget.dart';
import 'package:mcs_accounting_flutter_web/util/common_widgets/splash_icon.dart';

import '../../../../util/constants/assets_constant_string.dart';

class SplashMobile extends StatefulWidget {
  const SplashMobile({super.key, });


  @override
  State<SplashMobile> createState() => _SplashMobileState();
}

class _SplashMobileState extends State<SplashMobile> {
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

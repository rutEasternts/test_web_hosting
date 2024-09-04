import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../util/common_widgets/splash_icon.dart';
import '../../../../util/constants/assets_constant_string.dart';

class SplashTablet extends StatefulWidget {
  const SplashTablet({super.key,});

  @override
  State<SplashTablet> createState() => _SplashTabletState();
}

class _SplashTabletState extends State<SplashTablet> {

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

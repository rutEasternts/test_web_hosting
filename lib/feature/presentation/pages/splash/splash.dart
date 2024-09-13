
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/cloud_sign_in.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/splash/splash_mobile.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/splash/splash_tablet.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/splash/splash_web.dart';
import 'package:mcs_accounting_flutter_web/util/common_widgets/responsive_layout_widget.dart';
import 'package:mcs_accounting_flutter_web/util/constants/string_constants.dart';

import '../../../../router/route_constant.dart';
import '../../../../router/routes.dart';
import 'dart:js' as js;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>   {

  // late BuildContext buildContext;


  @override
  void initState() {
    super.initState();
    // buildContext=context;
    // Route route = MaterialPageRoute(builder: (context) => const CloudSignIn());
    // Navigator.pushAndRemoveUntil(context, route, (Route<dynamic> route) => false);

    js.context.callMethod('setDocumentTitle', [StringConstant.appName]); // displays the name of each page on tab bar

    Future.delayed(const Duration(seconds: 3)).then((value) {

      // context.go(AppRouterPath.cloudSignIn);
      // AppRouter.goRouter.push(AppRouterPath.cloudSignIn);

      // js.context.callMethod('setDocumentTitle', [RouteNames.routeNameCloudSignIn]);
      // Navigator.pop(context);


      // Route route = MaterialPageRoute(builder: (context) => const CloudSignIn());
      // Navigator.pushAndRemoveUntil(context, route, (Route<dynamic> route) => false);

      // Navigator.push(buildContext, MaterialPageRoute(builder: (context) => CloudSignIn()));

      // Route route = MaterialPageRoute(builder: (context) => CloudSignIn());
      // Navigator.pushAndRemoveUntil(buildContext, route, (Route<dynamic> route) => false);

      // Navigator.push(buildContext, MaterialPageRoute(builder: (BuildContext context) => CloudSignIn()));
      // Navigator.pushNamed(buildContext, '/cloud_sign_in');

      // Route route = MaterialPageRoute(builder: (context) => CloudSignIn());
      // Navigator.pushAndRemoveUntil(buildContext, route, (Route<dynamic> route) => false);



      // Navigator.pushReplacementNamed(context, '/cloud_sign_in');

      // AppRouter.goRouter.pushReplacementNamed(RouteNames.routeNameCloudSignIn);


      // Navigator.pushReplacement(buildContext, MaterialPageRoute(builder: (context) => CloudSignIn()));


      // buildContext.push(AppRouterPath.cloudSignIn);



      context.go(AppRouterPath.cloudSignIn); // displays the name of each page in url
      // context.pop();

      // GoRouter.of(buildContext).pushReplacementNamed(RouteNames.routeNameCloudSignIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktop: (BoxConstraints constraints){
           return const SplashWeb( );
        },
        tablet: (BoxConstraints constraints){
          return const SplashTablet( );
        },
        mobile: (BoxConstraints constraints){
          return const SplashMobile();
        },
    );
  }
}

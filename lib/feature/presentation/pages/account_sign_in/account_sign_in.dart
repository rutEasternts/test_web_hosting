
import 'package:flutter/cupertino.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in_mobile.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in_tablet.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in_web.dart';

import '../../../../router/route_constant.dart';
import '../../../../util/common_widgets/responsive_layout_widget.dart';
import 'dart:js' as js;

class AccountSignIn extends StatefulWidget {
  const AccountSignIn({super.key});

  @override
  State<AccountSignIn> createState() => _AccountSignInState();
}

class _AccountSignInState extends State<AccountSignIn> {

  @override
  void initState() {
    js.context.callMethod('setDocumentTitle', [RouteNames.routeNameAccountSignIn]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: (BoxConstraints constraints){
        return AccountSignInWeb();
      },
      tablet: (BoxConstraints constraints){
        return AccountSignInTablet();
      },
      mobile: (BoxConstraints constraints){
        return AccountSignInMobile();
      },
    );
  }
}

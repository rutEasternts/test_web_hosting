
import 'package:flutter/cupertino.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in_mobile.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in_tablet.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in_web.dart';

import '../../../../util/common_widgets/responsive_layout_widget.dart';

class AccountSignIn extends StatefulWidget {
  const AccountSignIn({super.key});

  @override
  State<AccountSignIn> createState() => _AccountSignInState();
}

class _AccountSignInState extends State<AccountSignIn> {

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

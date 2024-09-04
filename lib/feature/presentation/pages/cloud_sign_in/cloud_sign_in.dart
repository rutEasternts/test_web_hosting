


import 'package:flutter/cupertino.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/cloud_sign_in_mobile.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/cloud_sign_in_tablet.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/cloud_sign_in_web.dart';

import '../../../../util/common_widgets/responsive_layout_widget.dart';

class CloudSignIn extends StatefulWidget {
  const CloudSignIn({super.key});

  @override
  State<CloudSignIn> createState() => _CloudSignInState();
}

class _CloudSignInState extends State<CloudSignIn> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: (BoxConstraints constraints){
        print("9999999999:desktop");
        return CloudSignInWeb(constraints: constraints,);
      },
      tablet: (BoxConstraints constraints){
        print("9999999999:tab");
        return CloudSignInTablet();
      },
      mobile: (BoxConstraints constraints){
        print("9999999999:mobile");
        return CloudSignInMobile();
      },
    );
  }
}

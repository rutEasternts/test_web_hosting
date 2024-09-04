

import 'package:flutter/material.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/widgets/cloud_sign_in_widget.dart';

class CloudSignInMobile extends StatefulWidget {
  const CloudSignInMobile({super.key});

  @override
  State<CloudSignInMobile> createState() => _CloudSignInMobileState();
}

class _CloudSignInMobileState extends State<CloudSignInMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CloudSignInWidget(isMobile: true,),
    );
  }
}

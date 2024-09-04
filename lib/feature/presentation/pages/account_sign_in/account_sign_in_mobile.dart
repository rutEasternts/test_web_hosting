import 'package:flutter/material.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/widgets/account_sign_in_widget.dart';

class AccountSignInMobile extends StatefulWidget {
  const AccountSignInMobile({super.key});

  @override
  State<AccountSignInMobile> createState() => _AccountSignInMobileState();
}

class _AccountSignInMobileState extends State<AccountSignInMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountSignInWidget(isMobile: true),
    );
  }
}

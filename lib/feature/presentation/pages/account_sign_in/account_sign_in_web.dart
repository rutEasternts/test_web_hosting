import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/widgets/account_sign_in_widget.dart';
import 'package:provider/provider.dart';
import '../../state_management/could_sign_in slider_notifier.dart';
import '../cloud_sign_in/widgets/slider_widget.dart';

class AccountSignInWeb extends StatefulWidget {
  const AccountSignInWeb({super.key});

  @override
  State<AccountSignInWeb> createState() => _AccountSignInWebState();
}

class _AccountSignInWebState extends State<AccountSignInWeb> {


  late CloudSignInSliderNotifier cloudSignInSliderNotifier;
  @override
  void initState() {
    cloudSignInSliderNotifier=Provider.of<CloudSignInSliderNotifier>(context,listen: false);
    cloudSignInSliderNotifier.init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: AccountSignInWidget(isMobile: false),
          ),
          const Expanded(
            flex: 1,
            child: SliderWidget(
            ),
          ),
        ],
      ),
    );
  }
}

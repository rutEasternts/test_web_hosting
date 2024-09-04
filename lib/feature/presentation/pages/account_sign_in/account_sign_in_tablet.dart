import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/widgets/account_sign_in_widget.dart';
import 'package:provider/provider.dart';

import '../../state_management/could_sign_in slider_notifier.dart';
import '../cloud_sign_in/widgets/slider_widget.dart';

class AccountSignInTablet extends StatefulWidget {
  const AccountSignInTablet({super.key});

  @override
  State<AccountSignInTablet> createState() => _AccountSignInTabletState();
}

class _AccountSignInTabletState extends State<AccountSignInTablet> {

  late CloudSignInSliderNotifier sliderIndexNotifier;

  @override
  void initState() {
    sliderIndexNotifier=Provider.of<CloudSignInSliderNotifier>(context,listen: false);
    sliderIndexNotifier.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        return orientation ==Orientation.portrait
            ?
        Scaffold(body: AccountSignInWidget(isMobile: false),) :
        Scaffold(
          body:  Row(
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
      },
    );
  }
}

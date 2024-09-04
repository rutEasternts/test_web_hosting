import 'package:flutter/material.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/widgets/cloud_sign_in_widget.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/widgets/slider_widget.dart';
import 'package:provider/provider.dart';

import '../../state_management/could_sign_in slider_notifier.dart';

class CloudSignInTablet extends StatefulWidget {
  const CloudSignInTablet({super.key});

  @override
  State<CloudSignInTablet> createState() => _CloudSignInTabletState();
}

class _CloudSignInTabletState extends State<CloudSignInTablet> {


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
        Scaffold(
          body: CloudSignInWidget(isMobile: false),
        ) :
        Scaffold(
          body:  Row(
            children: [
              Expanded(
                flex: 1,
                child: CloudSignInWidget(isMobile: false),
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

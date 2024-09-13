
import 'package:flutter/material.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/widgets/cloud_sign_in_widget.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/widgets/slider_widget.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/state_management/could_sign_in slider_notifier.dart';
import 'package:provider/provider.dart';
import 'dart:js' as js;

import '../../../../router/route_constant.dart';

class CloudSignInWeb extends StatefulWidget {
  CloudSignInWeb({super.key, required this.constraints});

  BoxConstraints constraints;
  @override
  State<CloudSignInWeb> createState() => _CloudSignInWebState();
}

class _CloudSignInWebState extends State<CloudSignInWeb> {
  late BoxConstraints constraints;
  late CloudSignInSliderNotifier sliderIndexNotifier;
  @override
  void initState() {
    constraints=widget.constraints;
    sliderIndexNotifier=Provider.of<CloudSignInSliderNotifier>(context,listen: false);
    sliderIndexNotifier.init();
    js.context.callMethod('setDocumentTitle', [RouteNames.routeNameCloudSignIn]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
  }
}


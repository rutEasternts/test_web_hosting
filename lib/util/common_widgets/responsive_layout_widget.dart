import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BoxConstraints constraints) mobile;

  final Widget Function(BoxConstraints constraints) tablet;

  final Widget Function(BoxConstraints constraints) desktop;

  const ResponsiveLayout({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // if (constraints.minWidth > 1024) {
        //   return desktop(constraints);
        // } else if (constraints.minWidth > 900) {
        //   return tablet(constraints);
        // } else {
        //   return mobile(constraints);
        // }
        if (constraints.minWidth<=666) {
          return mobile(constraints);
        } else if (constraints.minWidth>= 768 && constraints.minWidth <=1024) {
          return tablet(constraints);
          // } else if(constraints.minWidth>= 992 && constraints.minWidth <=1199) {
          //   return desktop(constraints);
          // }
        }else{
          return desktop(constraints);
        }
      },
    );
  }
}
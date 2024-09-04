import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcs_accounting_flutter_web/di/injection_container.dart' as di;
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/account_sign_in/account_sign_in.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/cloud_sign_in/cloud_sign_in.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/pages/splash/splash.dart';
import 'package:mcs_accounting_flutter_web/provider_list.dart';
import 'package:mcs_accounting_flutter_web/router/routes.dart';
import 'package:mcs_accounting_flutter_web/util/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_web_plugins/url_strategy.dart';


// import 'package:get/get.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  usePathUrlStrategy();// for not using # in urls

  await ScreenUtil.ensureScreenSize();
  runApp(
      MultiProvider(
    providers: ListProvider.providerList,
    child: const MyApp(),
  ));

  // runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    // return ResponsiveSizer(
    //   builder: (context, orientation, screenType) {
    //     return MaterialApp.router(
    //       // routerConfig: AppRouter.goRouter,
    //       routeInformationProvider: AppRouter.goRouter.routeInformationProvider,
    //       routeInformationParser: AppRouter.goRouter.routeInformationParser,
    //       routerDelegate: AppRouter.goRouter.routerDelegate,
    //       theme: AppTheme.lightTheme(context),
    //     );
    //   },
    // );

    return LayoutBuilder(
        builder: (context,constraints) {
          return ScreenUtilInit(
            child: MaterialApp.router(
              routerConfig: AppRouter.goRouter,
              // routeInformationProvider: AppRouter.goRouter.routeInformationProvider,
              // routeInformationParser: AppRouter.goRouter.routeInformationParser,
              // routerDelegate: AppRouter.goRouter.routerDelegate,
              theme: AppTheme.lightTheme(context),
            ),
          );
        }
    );


    return LayoutBuilder(
        builder: (context,constraints) {
          return ScreenUtilInit(
            child: MaterialApp(
              initialRoute: '/',
              routes: {
                // When navigating to the "/" route, build the FirstScreen widget.
                '/': (context) => const SplashPage(),
                // When navigating to the "/second" route, build the SecondScreen widget.
                '/cloud_sign_in': (context) => const CloudSignIn(),
                '/account_sign_in': (context) => const AccountSignIn(),
              },
              // routeInformationProvider: AppRouter.goRouter.routeInformationProvider,
              // routeInformationParser: AppRouter.goRouter.routeInformationParser,
              // routerDelegate: AppRouter.goRouter.routerDelegate,
              theme: AppTheme.lightTheme(context),
            ),
          );
        }
    );


    // return LayoutBuilder(
    //     builder: (context,constraints) {
    //       return ScreenUtilInit(
    //         child: GetMaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: 'WHIN',
    //           home: SplashPage(),
    //           theme: AppTheme.lightTheme(context),
    //         ),
    //       );
    //     }
    // );
  }
}

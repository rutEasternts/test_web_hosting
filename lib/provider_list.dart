
import 'package:mcs_accounting_flutter_web/di/injection_container.dart';
import 'package:mcs_accounting_flutter_web/feature/presentation/state_management/could_sign_in slider_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ListProvider extends MultiProvider {
  // ListProvider({super.key, required super.providers});
  ListProvider({super.key, required List<SingleChildWidget> providers})
      : super(providers: providers);
  static List<SingleChildWidget> providerList = [

    // ChangeNotifierProvider<SliderIndexNotifier>(create: (_) => getIt<SliderIndexNotifier>()),
    ChangeNotifierProvider<CloudSignInSliderNotifier>(create: (_) => CloudSignInSliderNotifier()),

  ];
}

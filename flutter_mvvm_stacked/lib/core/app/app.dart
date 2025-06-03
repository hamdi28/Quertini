import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_mvvm_stacked/ui/views/counter_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CounterView, initial: true),
    // Add other routes here
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    // Add other services here
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}

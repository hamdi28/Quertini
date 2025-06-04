import 'package:quertini/ui/views/create_qr/create_qr_view.dart';
import 'package:quertini/ui/views/home/home_view.dart';
import 'package:quertini/ui/views/scan_qr/scan_qr_view.dart';
import 'package:quertini/ui/views/scan_qr_from_image/scan_qr_from_image_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quertini/core/services/shared_preferences_service.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: CreateQrView),
    MaterialRoute(page: ScanQrView),
    MaterialRoute(page: ScanQrFromImageView),
    // CounterView is removed
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SharedPreferencesService),
    // Other services
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}

import 'package:quertini/core/app/app.locator.dart'; // For locator
import 'package:quertini/core/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final DialogService _dialogService = locator<DialogService>();
  final SharedPreferencesService _sharedPreferencesService = locator<SharedPreferencesService>();

  // Method to be called when ViewModel is ready
  Future<void> initialise() async {
    bool dialogShown = await _sharedPreferencesService.hasShownWelcomeDialog();
    if (!dialogShown) {
      await _dialogService.showDialog(
        title: 'Welcome to Quertini!',
        description: 'Thanks for using our app. We hope you enjoy the experience. Let\'s get started creating and scanning QR codes!',
        buttonTitle: 'Awesome!',
      );
      await _sharedPreferencesService.setWelcomeDialogShown(true);
    }
  }
}

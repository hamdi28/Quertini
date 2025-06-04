import 'package:flutter/material.dart';
import 'package:quertini/core/viewmodels/home/home_viewmodel.dart';
import 'package:quertini/ui/views/create_qr/create_qr_view.dart';
import 'package:quertini/ui/views/scan_qr/scan_qr_view.dart';
import 'package:quertini/ui/views/scan_qr_from_image/scan_qr_from_image_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const CreateQrView();
      case 1:
        return const ScanQrView();
      case 2:
        return const ScanQrFromImageView();
      default:
        return const CreateQrView(); // Default to first view
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) => model.initialise(), // Call initialise here
      builder: (context, model, child) => Scaffold(
        body: getViewForIndex(model.currentIndex), // currentIndex from IndexTrackingViewModel
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model.currentIndex,
          onTap: model.setIndex, // setIndex from IndexTrackingViewModel
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_2),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image_search),
              label: 'From Image',
            ),
          ],
        ),
      ),
    );
  }
}

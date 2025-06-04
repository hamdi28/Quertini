import 'package:flutter/material.dart';
import 'package:pretty_qr_code_plus/pretty_qr_code_plus.dart';
import 'package:quertini/core/viewmodels/create_qr/create_qr_viewmodel.dart';
import 'package:quertini/ui/common/app_colors.dart'; // For primaryBlueColor
import 'package:stacked/stacked.dart';

class CreateQrView extends StatelessWidget {
  const CreateQrView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateQrViewModel>.reactive(
      viewModelBuilder: () => CreateQrViewModel(),
      // No need for onViewModelReady for simple cases, unless specific init is needed for this view model
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Create QR Code'),
          // backgroundColor: primaryBlueColor, // Already handled by theme
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView( // Added for small screens
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  controller: model.qrDataController,
                  decoration: const InputDecoration(
                    labelText: 'Enter data for QR Code',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => model.onQrDataChanged(value), // Optional: if live validation/update is needed
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: model.generateQrCode,
                  // style: ElevatedButton.styleFrom(backgroundColor: primaryBlueColor), // Handled by theme
                  child: const Text('Generate QR Code'),
                ),
                const SizedBox(height: 30),
                if (model.qrData.isNotEmpty)
                  Center( // Center the QR code
                    child: PrettyQrView(
                      data: model.qrData,
                      settings: const PrettyQrSettings(
                        size: 200,
                        elementColor: primaryBlueColor, // Use the primary color
                        // Other customizations can be added here
                      ),
                    ),
                  )
                else
                  const Center(
                    child: Text('Enter data and tap "Generate QR Code" to see your QR.'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

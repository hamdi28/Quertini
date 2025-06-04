import 'package:flutter/material.dart'; // Required for TextEditingController
import 'package:stacked/stacked.dart';

class CreateQrViewModel extends BaseViewModel {
  final TextEditingController _qrDataController = TextEditingController();
  TextEditingController get qrDataController => _qrDataController;

  String _qrData = '';
  String get qrData => _qrData;

  void onQrDataChanged(String value) {
    // In a real app, you might do live validation or updates here
    // For now, we'll just update on explicit generation
    // If you want live QR generation as user types, update _qrData here and rebuildUi
  }

  void generateQrCode() {
    _qrData = _qrDataController.text;
    rebuildUi();
  }

  @override
  void dispose() {
    // Always dispose controllers
    _qrDataController.dispose();
    super.dispose();
  }
}

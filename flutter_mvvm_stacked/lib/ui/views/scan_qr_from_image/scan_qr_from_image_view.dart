import 'package:flutter/material.dart';

class ScanQrFromImageView extends StatelessWidget {
  const ScanQrFromImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR from Image'),
      ),
      body: const Center(
        child: Text('Scan QR Code from Image View'),
      ),
    );
  }
}

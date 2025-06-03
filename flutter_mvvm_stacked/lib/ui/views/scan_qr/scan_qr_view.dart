import 'package:flutter/material.dart';

class ScanQrView extends StatelessWidget {
  const ScanQrView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
      ),
      body: const Center(
        child: Text('Scan QR Code View (Live Camera)'),
      ),
    );
  }
}

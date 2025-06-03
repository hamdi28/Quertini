import 'package:flutter/material.dart';

class CreateQrView extends StatelessWidget {
  const CreateQrView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create QR Code'),
      ),
      body: const Center(
        child: Text('Create QR Code View'),
      ),
    );
  }
}

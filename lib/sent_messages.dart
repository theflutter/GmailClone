import 'package:flutter/material.dart';

class SentMessagesScreen extends StatelessWidget {
  const SentMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sent Messages'),
      ),
      body: const Center(
        child: Text('List of Sent Messages'),
      ),
    );
  }
}

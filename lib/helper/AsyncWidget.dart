import 'package:flutter/material.dart';

class AsyncPageLoader extends StatelessWidget {
  final Widget page;

  const AsyncPageLoader({super.key, required this.page});

  Future<void> _loadDelay() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadDelay(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return page;
        }
      },
    );
  }
}

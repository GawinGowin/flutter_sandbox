import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_sandbox/pages/root.dart';

void main() {
  runApp(const ProviderScope(child: RepositoriesSearcher()));
}

class RepositoriesSearcher extends StatelessWidget {
  const RepositoriesSearcher({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child){
        return const MaterialApp(
          home: Root(),
        );
      }
    );
  }
}
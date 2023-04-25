import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_sandbox/pages/home.dart';
import 'package:flutter_sandbox/pages/settings.dart';

final pageNotifierProvider = StateProvider((ref) => 0);

class Root extends ConsumerWidget {
  const Root({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(pageNotifierProvider);

    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label:"ホーム"
        ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label:"オプション"
        ),  
    ];

    final pages = [
      const Home(),
      const Settings(),
    ];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        key: const Key("BottomNavigationBar_root"),
        items: items,
        currentIndex: index,
        onTap: (indexTap){
          ref.read(pageNotifierProvider.notifier).state = indexTap;
        },
      )
    );
  }
}
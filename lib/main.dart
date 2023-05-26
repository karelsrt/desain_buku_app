import 'package:desain_buku_app/state_util.dart';
import 'package:flutter/material.dart';

import 'module/bottom/view/bottom_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const BottomView(),
    );
  }
}

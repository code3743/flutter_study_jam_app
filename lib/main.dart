import 'package:flutter/material.dart';

import 'src/shared/presentation/pages/components_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Jam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(useMaterial3: true),
      home: const ComponentsPage(),
    );
  }
}

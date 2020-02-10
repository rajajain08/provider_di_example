import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slides_example/bottom_navigator.dart';
import 'package:slides_example/navigator_keys.dart';

class MyApp extends StatelessWidget {
  final rootNavigator = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Application',
      navigatorKey: rootNavigator,
      home: MultiProvider(providers: [
        Provider(create: (_) => NavigatorKeys()),
      ], child: BottomNavigator()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice_app/routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final route = AppRoute();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      onGenerateRoute: route.onRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invoice_app/404/not_found.dart';
import 'package:invoice_app/bloc/time.dart';

import '../pages/home.dart';

class AppRoute {
  final TimeBloc timeb = TimeBloc();
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: timeb,
            child: HomePage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundPage(),
        );
    }
  }
}

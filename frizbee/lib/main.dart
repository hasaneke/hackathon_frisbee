import 'package:flutter/material.dart';
import 'package:frizbee/utils/routes/route.gr.dart';

void main() {
  final appRouter = AppRouter();

  runApp(MaterialApp.router(
    routerDelegate: appRouter.delegate(),
    routeInformationParser: appRouter.defaultRouteParser(),
    title: 'Frisbee',
  ));
}

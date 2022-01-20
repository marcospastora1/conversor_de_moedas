import 'package:conversor/infrastructure/navigation/navigation.dart';
import 'package:conversor/infrastructure/navigation/routes.dart';
import 'package:conversor/initializer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await Initializer.init();
  final initialRoute = await Routes.initialRoute;

  runApp(
    GetMaterialApp(
      title: 'Conversor de modedas',
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
          ),
          hintStyle: TextStyle(color: Colors.amber),
        ),
      ),
    ),
  );
}

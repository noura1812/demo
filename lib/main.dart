import 'package:demo/homeScreen.dart';
import 'package:demo/register.dart';
import 'package:flutter/material.dart';

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        routes: {
          HomeScreen.routName: (context) {
            var model =
                ModalRoute.of(context)?.settings.arguments as RegisterModel?;
            return HomeScreen(
              email: model?.email ?? '',
              name: model?.name ?? '',
            );
          },
          RegisterScreen.routName: (context) => const RegisterScreen(),
        },
        initialRoute: RegisterScreen.routName);
  }
}

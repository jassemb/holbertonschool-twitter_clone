import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/app_state.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';
import 'package:twitter/widgets/flat_button.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AppState())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingIn(),
    );
  }
}

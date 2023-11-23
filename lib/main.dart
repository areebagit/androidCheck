import 'package:flutter/material.dart';

import 'SignIn.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashi.dart';

void main() async {
  ///to keep user logined until the session(in user.controller.js file) has expired
  WidgetsFlutterBinding.ensureInitialized();
  /// for that purpose we check if we have a user info token in shared preference that is local storage
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString('token'),));
}

class MyApp extends StatelessWidget {
  final token;
  const MyApp({super.key, this.token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

        home: (token != null && JwtDecoder.isExpired(token) == false )?Dashboard(token: token):SignInScreen(isCustomer: true,)
    );
  }
}



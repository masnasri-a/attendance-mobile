import 'dart:async';
import 'dart:ui';

import 'package:attendance/auth/forget.dart';
import 'package:attendance/home/main.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: defaultBgColor,
      ),
      home: const MyHomePage(title: 'Attendance Home'),
      initialRoute: '/',
      routes: {
        '/home': (context) => const MainPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  String _email = "";
  String _password = "";
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> _handleEmail(String value) async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      prefs.setString('email', value);
    });
  }

  Future<void> _handlePassword(String value) async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      prefs.setString('password', value);
    });
  }

  void setIsLoaded() {
    setState(() {
      isLoading = !isLoading;
    });

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        isLoading = !isLoading;
        Navigator.pushNamed(context, '/home');
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DartPluginRegistrant.ensureInitialized();

    return Container(
      decoration: const BoxDecoration(
        color: defaultBgColor,
      ),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            key: const Key("login-header"),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Container(
                    color: primaryColor,
                    alignment: const Alignment(0.0, 0.5),
                    child: Image.asset(
                      "assets/Logo.png",
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text(
                              "Welcome Back!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: defaultFont,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Enter your business email and password to login.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 14,
                                fontFamily: defaultFont,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                onChanged: (value) => _handleEmail(value),
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  label: Text("Email"),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Icon(
                                      Icons.email,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  hintText: "Input your work email.",
                                  labelStyle: TextStyle(
                                      color: secondaryColor,
                                      fontFamily: defaultFont,
                                      fontSize: 12),
                                  focusColor: Colors.black,
                                  hintStyle: TextStyle(
                                      color: secondaryColor,
                                      fontFamily: defaultFont,
                                      fontSize: 12),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: secondaryColor),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: primaryColor, width: 2),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red, width: 2),
                                  ),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              onChanged: (value) => _handlePassword(value),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                label: Text("Password"),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    color: secondaryColor,
                                  ),
                                ),
                                hintText: "Input your password.",
                                labelStyle: TextStyle(
                                    color: secondaryColor,
                                    fontFamily: defaultFont,
                                    fontSize: 12),
                                focusColor: Colors.black,
                                hintStyle: TextStyle(
                                    color: secondaryColor,
                                    fontFamily: defaultFont,
                                    fontSize: 12),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: secondaryColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: primaryColor, width: 2),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 2),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPasswordPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: defaultFont,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            GFButton(
                              onPressed: isLoading
                                  ? null
                                  : () {
                                      setIsLoaded();
                                    },
                              text: isLoading ? "Loading..." : "Login",
                              shape: GFButtonShape.pills,
                              borderShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fullWidthButton: true,
                              textColor: Colors.white,
                              textStyle: const TextStyle(
                                fontFamily: defaultFont,
                                fontSize: 16,
                              ),
                              color: primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

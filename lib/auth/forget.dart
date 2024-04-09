import 'dart:developer';

import 'package:attendance/auth/otp.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  void onPressed(BuildContext context) {
    Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => const OtpPage(),
      ),
    );
    log("Forget Password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              child: SizedBox(
                  height: 20,
                  child: Container(
                    color: primaryColor,
                  )),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
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
                          "Reset Password",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Please enter your email address to request reset password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: secondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondaryColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: secondaryColor,
                              fontSize: 14,
                            ),
                            hintText: "Enter your email",
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.email,
                                color: secondaryColor,
                              ),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GFButton(
                          onPressed: () => onPressed(context),
                          text: "Reset Password",
                          fullWidthButton: true,
                          color: primaryColor,
                          shape: GFButtonShape.pills,
                          borderShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textStyle: const TextStyle(
                            fontFamily: defaultFont,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

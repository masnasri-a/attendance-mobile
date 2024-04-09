import 'package:attendance/controller/auth/otp.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PasswordController putConn = Get.put(PasswordController());
    final PasswordController getConn = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Password'),
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
                          "New Password",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Please input your new password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: secondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) =>
                              putConn.handlingFirstPassword(value),
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
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
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) => {
                            putConn.handlingSecondPassword(value),
                          },
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            label: Text("Verify Password"),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: secondaryColor,
                              ),
                            ),
                            hintText: "Input your password.",
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2),
                            ),
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
                          ),
                        ),
                        Obx(
                          () => Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    getConn.isPasswordMatch() &&
                                    getConn.secondPassword.value.length < 6
                                        ? getConn.secondPassword.value.isEmpty
                                            ? ""
                                            : "Password must be at least 6 characters"
                                        : "",
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontFamily: defaultFont,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                              getConn.isPasswordMatch()
                                  ? ""
                                  : getConn.secondPassword.value == ""
                                      ? ""
                                      : "Password doesn't match",
                              style: const TextStyle(
                                color: Colors.red,
                                fontFamily: defaultFont,
                                fontSize: 12,
                              ),
                            ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Obx(() => GFButton(
                              onPressed: getConn.isPasswordMatch() &&
                                      getConn.secondPassword.value != "" &&
                                      getConn.secondPassword.value.length >= 6
                                  ? () => {}
                                  : null,
                              text: "Reset",
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
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

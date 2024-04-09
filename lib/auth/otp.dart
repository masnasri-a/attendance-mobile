import 'package:attendance/auth/new_password.dart';
import 'package:attendance/controller/auth/otp.dart';
import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    String otp = "";

    final OtpController otpConn = Get.put(OtpController());
    final OtpController valOtp = Get.find();
    final CountdownController _connTimer =
        new CountdownController(autoStart: true);

    handlerOtp(String value) {
      otp = value;
    }

    resendOtp() {
      print("resending otp");
    }

    verifyOtp() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NewPasswordPage()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
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
                  surfaceTintColor: Colors.white,
                  borderOnForeground: true,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image.asset(
                            "assets/otp.png",
                            width: 150,
                          ),
                        ),
                        const Text(
                          "Enter OTP",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: defaultFont,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Enter the OTP sent to your email",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: defaultFont,
                            color: secondaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Pinput(
                          controller: TextEditingController(),
                          focusNode: FocusNode(),
                          length: 6,
                          onChanged: (value) => handlerOtp(value),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GFButton(
                          onPressed: verifyOtp,
                          text: "Verify",
                          fullWidthButton: true,
                          color: primaryColor,
                          shape: GFButtonShape.pills,
                          borderShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Countdown(
                            controller: _connTimer,
                            seconds: 60,
                            build: (BuildContext context, double time) {
                              return Text(
                                "Resend OTP in ${time.toInt()}",
                                style: const TextStyle(
                                  color: secondaryColor,
                                  fontFamily: defaultFont,
                                  fontSize: 14,
                                ),
                              );
                            },
                            onFinished: () {
                              otpConn.handlingResend();
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        Obx(
                          () => TextButton(
                            onPressed: valOtp.isResendActive.value
                                ? () => {
                                      resendOtp(),
                                      _connTimer.restart(),
                                      otpConn.handlingResend()
                                    }
                                : null,
                            child: Text(
                              "Resend OTP",
                              style: TextStyle(
                                color: valOtp.isResendActive.value
                                    ? primaryColor
                                    : secondaryColor,
                                fontFamily: defaultFont,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
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

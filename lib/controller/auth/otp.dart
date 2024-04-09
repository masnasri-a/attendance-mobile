import 'package:get/get.dart';

class OtpController extends GetxController{
  var isResendActive = false.obs;

  handlingResend() => isResendActive.value = !isResendActive.value;
}

class PasswordController extends GetxController{
  var firstPassword = "".obs;
  var secondPassword = "".obs;

  handlingFirstPassword(String value) => firstPassword.value = value;
  handlingSecondPassword(String value) => secondPassword.value = value;

  bool isPasswordMatch() => firstPassword.value == secondPassword.value;
}
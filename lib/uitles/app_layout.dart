import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(num pixels) {
    num x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(num pixels) {
    num x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}


import 'package:flutter_insta/src/viewmodel/01 bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavController(),permanent:true); // 2022.10.11 git 테스트 입
  }
}
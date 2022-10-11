import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_insta/src/view/03 upload.dart';
import 'package:get/get.dart';

import '../view/02 message_popup.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE}

class BottomNavController extends GetxController{
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  //2022.10.11 탭 버튼 눌러서 페이지 변경 이벤트
  void changeBottomNav (int value, {bool hasGesture = true}){
    var page = PageName.values[value];
    switch(page)
    {
      case PageName.UPLOAD:
        Get.to(() => Upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _ChangePage(value, hasGesture : hasGesture);
        break;
    }
    pageIndex(value);
  }

  //2022.10.11 핸드폰 뒤로가기 버튼 눌렀을 때 이전 History 페이지로 이동
  Future<bool> willPopAction() async{
    if(bottomHistory.length == 1){
      showDialog(
          context: Get.context!,
          builder: (context) => MessagePopup(
            message: '종료하시겠습니까?',
            okCallback: () {
              exit(0);
            },
            cancelCallback: Get.back,
            title: '시스템',
          ));
     print('exit!');
     return true;
    }
    else {
     print('goto before page!');
     bottomHistory.removeLast();
     var index = bottomHistory.last;
     changeBottomNav(index, hasGesture: false); // 뒤로가기 눌렀을 때, History 저장 안하
     print(bottomHistory);
     return false;
    }
  }

  //페이저 변경
  void _ChangePage(int value, {bool hasGesture = true}){
    pageIndex(value);
    if (!hasGesture) return;
    if (bottomHistory.last != value){
      bottomHistory.add(value);
      print(bottomHistory);
    }

  }
}


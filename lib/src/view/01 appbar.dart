import 'package:flutter/material.dart';
import 'package:flutter_insta/src/viewmodel/01 bottom_nav_controller.dart';
import 'package:flutter_insta/src/components/image_data.dart';
import 'package:get/get.dart';

class App extends GetView<BottomNavController>{ // 2022.10.11 유튜버가 이거 빠르게 만들던데
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: controller.willPopAction,
        child: Obx(
          () => Scaffold(
          //backgroundColor: Colors.red,
          appBar: AppBar(),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Container(child: Text('HOME'),),
              Container(child: Text('SEARCH'),),
              Container(child: Center(child : Text('UPLOAD')),),
              Container(child: Center(child : Text('ACTIVITY')),),
              Container(child: Center(child : Text('MYPAGE')),),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            //backgroundColor: Colors.red, // 2022.10.11 보통 SVG 파일로 관리
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,

            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: 'home'
              ),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.searchOff),
                  activeIcon: ImageData(IconsPath.searchOn),
                  label: 'home'
              ),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.uploadIcon),
                  label: 'home'
              ),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.activeOff),
                  activeIcon: ImageData(IconsPath.activeOn),
                  label: 'home'
              ),
              BottomNavigationBarItem( //
                  icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                  ),
                  label: 'home'
              ),
            ],
          ),
        )),
    );
  }
}
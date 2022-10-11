import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ImageData extends StatelessWidget {
  String icon;
  final double? width;
  ImageData(this.icon, {
    Key? key,
    this.width = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        icon,
        width: width! / MediaQuery.of(context).devicePixelRatio,
    );
  }
}

//2022 10.11 경로 제대로 설정해야함
class IconsPath {
  static String get homeOff => 'lib/assets/images/bottom_nav_home_off_icon.jpg';
  static String get homeOn => 'lib/assets/images/bottom_nav_home_on_icon.jpg';
  static String get searchOff => 'lib/assets/images/bottom_nav_search_off_icon.jpg';
  static String get searchOn => 'lib/assets/images/bottom_nav_search_on_icon.jpg';
  static String get uploadIcon => 'lib/assets/images/bottom_nav_upload_icon.jpg';
  static String get activeOff => 'lib/assets/images/bottom_nav_active_off_icon.jpg';
  static String get activeOn => 'lib/assets/images/bottom_nav_active_on_icon.jpg';
  static String get logo => 'lib/assets/images/logo.jpg';
  static String get directMessage => 'lib/assets/images/direct_msg_icon.jpg';
  static String get plusIcon => 'lib/assets/images/plus_icon.png';
  static String get postMoreIcon => 'lib/assets/images/more_icon.jpg';
  static String get likeOffIcon => 'lib/assets/images/like_off_icon.jpg';
  static String get likeOnIcon => 'lib/assets/images/like_on_icon.jpg';
  static String get replyIcon => 'lib/assets/images/reply_icon.jpg';
  static String get bookMarkOffIcon => 'lib/assets/images/book_mark_off_icon.jpg';
  static String get bookMarkOnIcon => 'lib/assets/images/book_mark_on_icon.jpg';
  static String get backBtnIcon => 'lib/assets/images/back_icon.jpg';
  static String get menuIcon => 'lib/assets/images/menu_icon.jpg';
  static String get addFriend => 'lib/assets/images/add_friend_icon.jpg';
  static String get gridViewOff => 'lib/assets/images/grid_view_off_icon.jpg';
  static String get gridViewOn => 'lib/assets/images/grid_view_on_icon.jpg';
  static String get myTagImageOff => 'lib/assets/images/my_tag_image_off_icon.jpg';
  static String get myTagImageOn => 'lib/assets/images/my_tag_image_on_icon.jpg';
  static String get nextImage => 'lib/assets/images/upload_next_icon.jpg';
  static String get closeImage => 'lib/assets/images/close_icon.jpg';
  static String get imageSelectIcon => 'lib/assets/images/image_select_icon.jpg';
  static String get cameraIcon => 'lib/assets/images/camera_icon.jpg';
  static String get uploadComplete => 'lib/assets/images/upload_complete_icon.jpg';
  static String get mypageBottomSheet01 =>
      'lib/assets/images/mypage_bottom_sheet_01.jpg';
  static String get mypageBottomSheet02 =>
      'lib/assets/images/mypage_bottom_sheet_02.jpg';
  static String get mypageBottomSheet03 =>
      'lib/assets/images/mypage_bottom_sheet_03.jpg';
  static String get mypageBottomSheet04 =>
      'lib/assets/images/mypage_bottom_sheet_04.jpg';
  static String get mypageBottomSheet05 =>
      'lib/assets/images/mypage_bottom_sheet_05.jpg';
  static String get mypageBottomSheetSetting01 =>
      'lib/assets/images/mypage_bottom_sheet_setting_01.jpg';
  static String get mypageBottomSheetSetting02 =>
      'lib/assets/images/mypage_bottom_sheet_setting_02.jpg';
  static String get mypageBottomSheetSetting03 =>
      'lib/assets/images/mypage_bottom_sheet_setting_03.jpg';
  static String get mypageBottomSheetSetting04 =>
      'lib/assets/images/mypage_bottom_sheet_setting_04.jpg';
  static String get mypageBottomSheetSetting05 =>
      'lib/assets/images/mypage_bottom_sheet_setting_05.jpg';
  static String get mypageBottomSheetSetting06 =>
      'lib/assets/images/mypage_bottom_sheet_setting_06.jpg';
  static String get mypageBottomSheetSetting07 =>
      'lib/assets/images/mypage_bottom_sheet_setting_07.jpg';
}

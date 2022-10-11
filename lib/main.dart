import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta/src/init_bindings.dart';
import 'package:get/get.dart';

import 'src/view/01 appbar.dart'; // 2022.10.11 GetX 라이브러리 불러오기

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // 2022.10.11 GetX 사용하기 위해 변경
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(                  //2022.10.11
          backgroundColor: Colors.white,                 //2022.10.11
          titleTextStyle: TextStyle(color: Colors.black),//2022.10.11
        )
      ),
      initialBinding: InitBinding(),
      home: const App(),
    );
  }
}

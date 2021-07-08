import 'dart:io' show Platform, stdout;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  print(defaultTargetPlatform);
  // Or, use a predicate getter.
  // ここの判定はdebugモードでも機能する
  if (Platform.isIOS) {
    print('is a IOS');
  } else if (Platform.isAndroid) {
    print('is a Android');
  } else {
    print('something else.');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // この判定もdebugモードで動作する
    Widget? eachPlatform;
    if (Platform.isIOS) {
      eachPlatform = Text('ios');
    } else if (Platform.isAndroid) {
      eachPlatform = ListTile(
        title: Text('android'),
      );
    } else {
      eachPlatform = Container();
      print(Platform.operatingSystem);
    }

    if (defaultTargetPlatform == TargetPlatform.android) {
      print('android');
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      print('ios');
    } else {
      print('default is $defaultTargetPlatform');
    }

    return MaterialApp(
      home: Scaffold(
        // SafeAreaがないと上の時計の部分に文字が入り込む
        body: SafeArea(
          child: Container(
            child: eachPlatform,
          ),
        ),
      ),
    );
  }
}

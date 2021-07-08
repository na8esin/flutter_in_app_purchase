import 'dart:io' show Platform, stdout;

void main() {
  // Get the operating system as a string.
  String os = Platform.operatingSystem;

  // Or, use a predicate getter.
  // ここの判定はdebugモードでも機能する
  if (Platform.isIOS) {
    print('is a IOS');
  } else if (Platform.isAndroid) {
    print('is a Android');
  } else {
    print('something else.');
  }
}

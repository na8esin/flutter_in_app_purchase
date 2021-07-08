in_app_purchaseのサンプルをmainに

デベロッパー登録して、商品を設定すれば購入のテストはできる状態

https://github.com/android/play-billing-samples

# リファレンス
https://developer.android.com/google/play/billing/subscriptions?hl=ja

## 利用権を付与する前に購入を確認する
https://developer.android.com/google/play/billing/security#verify

# Configuration.storekitの編集はxcode上で簡潔する
flutter_localizationsは関係ない

# パッケージに大きな更新があった場合
exampleをcompareしながら修正する

# テスト項目
https://developer.android.com/google/play/billing/test?hl=ja#test_cases

# android , iosの違い
- subscription upgrade or downgradeはiosではiTunesConnectで行う

# version up
0.6.0から1.0.0でexampleに変化なし

# SHA 証明書フィンガープリント
./gradlew signingReport

# PlatformException(sign_in_failed, com.google.android.gms.common.api.ApiException
## 12500
Firebaseのプロジェクトの設定で`サポートメール`を設定する
## 10
SHA-1 証明書のフィンガープリントの設定
## com.google.android.gms.common.api.ApiException: 7
ネットワークエラーらしいけど、そんなはずはないし、上の10のエラーが解決されると出なくなった

https://stackoverflow.com/questions/55583381/what-does-apiexpception-7-mean-when-using-google-sign-in-through-firebase

# In-app billing API version 3 is not supported on this device
google playにログインしてないとログに出るらしい  
https://stackoverflow.com/questions/33180743/in-app-billing-version-3-not-supported-with-up-to-date-play-store

# Robo テストでのログイン
https://firebase.google.cn/docs/test-lab/android/robo-ux-test?hl=ja#sign-in

# codelabs
https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#0
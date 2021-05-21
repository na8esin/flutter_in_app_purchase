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
- 購入してコンテンツが見れる
- 定期購入を解除するとコンテンツが見れなくなる
- カードが無効などで支払いができないけど猶予期間中は使える

# android , iosの違い
- subscription upgrade or downgradeはiosではiTunesConnectで行う

# version up
0.6.0から1.0.0でexampleに変化なし
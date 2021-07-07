// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'credential.dart';
import 'purchase.dart';

UserCredential? user;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  user = await FirebaseAuth.instance.signInWithCredential(
      EmailAuthProvider.credential(email: email, password: password));

  if (defaultTargetPlatform == TargetPlatform.android) {
    // For play billing library 2.0 on Android, it is mandatory to call
    // [enablePendingPurchases](https://developer.android.com/reference/com/android/billingclient/api/BillingClient.Builder.html#enablependingpurchases)
    // as part of initializing the app.
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }
  runApp(Purchase());
}

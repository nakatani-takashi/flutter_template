import 'package:flutter/material.dart';

const platformAnimation = PageTransitionsTheme(
  builders: {
    TargetPlatform.android:
        CupertinoPageTransitionsBuilder(), // AndroidもiOSと同じ遷移アニメーションにする
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
  },
);

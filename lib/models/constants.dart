import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'enums.dart';

// AppBarタイトル
const String kTopAppBarTitle = 'SUBWAYシミュレーター';
const String kEditAppBarTitle = 'レシピ編集';

// プライバシポリシー関連
const String kPrivacyPolicyButtonText = 'プライバシーポリシー';
const String kPrivacyPolicyUrl =
    'https://hammer-appli.hatenablog.com/entry/2018/11/24/131136';

// Color
const Color kPrimaryColor = Color(0xFF1E7931);
const Color kAccentColor = Color(0xFFF5B710);

// Style
const TextStyle kWhiteBoldTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const TextStyle kTileTitleTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 17);

const TextStyle kTileSubTitleTextStyle = TextStyle(fontSize: 12);

// 数量
const Map<Amount, String> kAmountMap = {
  Amount.none: 'なし',
  Amount.little: '少なめ',
  Amount.normal: '普通',
  Amount.more: '多め',
  Amount.max: '上限',
};

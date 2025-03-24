import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Contains the dimensions and padding used
/// all over the application.
abstract class DiMens {
  //icon size
  static double iconSize = 24;

  // radius button
  static double buttonRadius48 = 48;
  static double buttonRadius24 = 24;
  static double buttonRadius16 = 16;
  static double buttonRadius12 = 12;
  static double buttonRadius8 = 8;

  // radius card
  static double cardRadius16 = 16;
  static double cardRadius12 = 12;
  static double cardRadius8 = 8;

  //
  static SizedBox boxHeight10 = SizedBox(height: ten);
  static SizedBox boxHeight12 = SizedBox(height: twelve);
  static SizedBox boxHeight16 = SizedBox(height: sixTeen);
  static SizedBox boxHeight2 = SizedBox(height: two);

  static SizedBox boxHeight20 = SizedBox(height: twenty);
  static SizedBox boxHeight24 = SizedBox(height: twentyFour);
  static SizedBox boxHeight32 = SizedBox(height: thirtyTwo);
  static SizedBox boxHeight4 = SizedBox(height: four);
  static SizedBox boxHeight40 = SizedBox(height: fourty);
  static SizedBox boxHeight48 = SizedBox(height: fourtyEight);
  static SizedBox boxHeight60 = SizedBox(height: sixty);
  static SizedBox boxHeight64 = SizedBox(height: sixtyFour);
  static SizedBox boxHeight8 = SizedBox(height: eight);
  static SizedBox boxHeight80 = SizedBox(height: eighty);
  static SizedBox boxWidth10 = SizedBox(width: ten);
  static SizedBox boxWidth12 = SizedBox(width: twelve);
  static SizedBox boxWidth16 = SizedBox(width: sixTeen);
  static SizedBox boxWidth2 = SizedBox(width: two);
  static SizedBox boxWidth20 = SizedBox(width: twenty);
  static SizedBox boxWidth24 = SizedBox(width: twentyFour);
  static SizedBox boxWidth32 = SizedBox(width: thirtyTwo);
  static SizedBox boxWidth4 = SizedBox(width: four);
  static SizedBox boxWidth40 = SizedBox(width: fourty);
  static SizedBox boxWidth60 = SizedBox(width: sixty);
  static SizedBox boxWidth8 = SizedBox(width: eight);
  static SizedBox boxWidth80 = SizedBox(width: eighty);
  static Divider divider = Divider(
    height: DiMens.zero,
    thickness: DiMens.pointEight,
  );

  static Divider dividerWithHeight = Divider(
    thickness: DiMens.pointEight,
    height: DiMens.one,
  );

  static EdgeInsets edgeInsets0 = EdgeInsets.zero;
  static EdgeInsets edgeInsets0_12 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets0_16 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: sixTeen,
  );

  static EdgeInsets edgeInsets0_2 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: two,
  );

  static EdgeInsets edgeInsets0_4 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: four,
  );

  static EdgeInsets edgeInsets0_6 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: six,
  );

  static EdgeInsets edgeInsets0_8 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: eight,
  );

  static EdgeInsets edgeInsets10 = EdgeInsets.all(ten);
  static EdgeInsets edgeInsets12 = EdgeInsets.all(twelve);
  static EdgeInsets edgeInsets12_0 = EdgeInsets.symmetric(
    vertical: twelve,
    horizontal: zero,
  );

  static EdgeInsets edgeInsets12_16 = EdgeInsets.symmetric(
    vertical: twelve,
    horizontal: sixTeen,
  );

  static EdgeInsets edgeInsets12_6 = EdgeInsets.symmetric(
    vertical: twelve,
    horizontal: six,
  );

  static EdgeInsets edgeInsets12_8 = EdgeInsets.symmetric(
    vertical: twelve,
    horizontal: eight,
  );

  static EdgeInsets edgeInsets16 = EdgeInsets.all(sixTeen);
  static EdgeInsets edgeInsets16_0 = EdgeInsets.symmetric(
    vertical: sixTeen,
    horizontal: zero,
  );

  static EdgeInsets edgeInsets16_12 = EdgeInsets.symmetric(
    vertical: sixTeen,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets16_8 = EdgeInsets.symmetric(
    vertical: sixTeen,
    horizontal: eight,
  );

  static EdgeInsets edgeInsets2 = EdgeInsets.all(two);
  static EdgeInsets edgeInsets20 = EdgeInsets.all(twenty);
  static EdgeInsets edgeInsets2_0 = EdgeInsets.symmetric(
    vertical: two,
    horizontal: zero,
  );

  static EdgeInsets edgeInsets4 = EdgeInsets.all(four);
  static EdgeInsets edgeInsets4_0 = EdgeInsets.symmetric(
    vertical: four,
    horizontal: zero,
  );

  static EdgeInsets edgeInsets4_12 = EdgeInsets.symmetric(
    vertical: four,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets4_16 = EdgeInsets.symmetric(
    vertical: four,
    horizontal: sixTeen,
  );

  static EdgeInsets edgeInsets4_8 = EdgeInsets.symmetric(
    vertical: four,
    horizontal: eight,
  );

  static EdgeInsets edgeInsets6 = EdgeInsets.all(six);
  static EdgeInsets edgeInsets6_0 = EdgeInsets.symmetric(
    vertical: six,
    horizontal: zero,
  );

  static EdgeInsets edgeInsets6_12 = EdgeInsets.symmetric(
    vertical: six,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets6_8 = EdgeInsets.symmetric(
    vertical: six,
    horizontal: eight,
  );

  static EdgeInsets edgeInsets8 = EdgeInsets.all(eight);
  static EdgeInsets edgeInsets8_0 = EdgeInsets.symmetric(
    vertical: eight,
    horizontal: zero,
  );

  static EdgeInsets edgeInsets8_12 = EdgeInsets.symmetric(
    vertical: eight,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets8_16 = EdgeInsets.symmetric(
    vertical: eight,
    horizontal: sixTeen,
  );

  static EdgeInsets edgeInsets8_32 = EdgeInsets.symmetric(
    vertical: eight,
    horizontal: thirtyTwo,
  );

  static EdgeInsets edgeInsets8_6 = EdgeInsets.symmetric(
    vertical: eight,
    horizontal: six,
  );

  static EdgeInsets edgeInsetsDefault = EdgeInsets.symmetric(
    vertical: eight,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsetsHorizDefault = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsetsOnlyBottom12 = EdgeInsets.only(bottom: twelve);
  static EdgeInsets edgeInsetsOnlyBottom16 = EdgeInsets.only(bottom: sixTeen);
  static EdgeInsets edgeInsetsOnlyBottom2 = EdgeInsets.only(bottom: two);
  static EdgeInsets edgeInsetsOnlyBottom4 = EdgeInsets.only(bottom: four);
  static EdgeInsets edgeInsetsOnlyBottom8 = EdgeInsets.only(bottom: eight);
  static EdgeInsets edgeInsetsOnlyLeft12 = EdgeInsets.only(left: twelve);
  static EdgeInsets edgeInsetsOnlyLeft16 = EdgeInsets.only(left: sixTeen);
  static EdgeInsets edgeInsetsOnlyLeft20 = EdgeInsets.only(left: twenty);
  static EdgeInsets edgeInsetsOnlyLeft24 = EdgeInsets.only(left: twentyFour);
  static EdgeInsets edgeInsetsOnlyLeft32 = EdgeInsets.only(left: thirtyTwo);
  static EdgeInsets edgeInsetsOnlyLeft8 = EdgeInsets.only(left: eight);
  static EdgeInsets edgeInsetsOnlyTop12 = EdgeInsets.only(top: twelve);
  static EdgeInsets edgeInsetsOnlyTop16 = EdgeInsets.only(top: sixTeen);
  static EdgeInsets edgeInsetsOnlyTop2 = EdgeInsets.only(top: two);
  static EdgeInsets edgeInsetsOnlyTop4 = EdgeInsets.only(top: four);
  static EdgeInsets edgeInsetsOnlyTop8 = EdgeInsets.only(top: eight);
  static EdgeInsets edgeInsetsRight12 = EdgeInsets.only(right: twelve);
  static EdgeInsets edgeInsetsRight16 = EdgeInsets.only(right: sixTeen);
  static EdgeInsets edgeInsetsRight20 = EdgeInsets.only(right: twenty);
  static EdgeInsets edgeInsetsRight4 = EdgeInsets.only(right: four);
  static EdgeInsets edgeInsetsRight6 = EdgeInsets.only(right: six);
  static EdgeInsets edgeInsetsRight8 = EdgeInsets.only(right: eight);
  //EdgeInsets

  static EdgeInsets edgeInsetsTopTwelvePercent = EdgeInsets.only(
    top: percentHeight(0.12),
  );

  static EdgeInsets edgeInsetsVertDefault = EdgeInsets.symmetric(
    vertical: twelve,
    horizontal: zero,
  );

  static double eight = 8;
  static double eighteen = 18;
  static double eighty = 80;
  static double eleven = 11;
  static double fifteen = 15;
  static double fifty = 50;
  static double fiftyFive = 55;
  static double fiftyFour = 54;
  static double fiftySix = 56;
  static double five = 5;
  static double four = 4;
  static double fourteen = 14;
  static double fourty = 40;
  static double fourtyEight = 48;
  static double hundred = 100;
  static double nineteen = 19;
  static double ninetyEight = 98;
  static double ninetyFive = 95;
  static double one = 1;
  static double oneHundredFifty = 150;
  static double oneHundredTwenty = 120;
  static double pointEight = 0.8;
  static double pointFive = 0.5;
  static double pointFour = 0.4;
  static double pointNine = 0.9;
  static double pointOne = 0.1;
  static double pointSeven = 0.7;
  static double pointSix = 0.6;
  static double pointThree = 0.3;
  static double pointTwo = 0.2;
  static double screenHeight = Get.size.height;
  static double screenWidth = Get.size.width;
  static double seven = 7;
  static double seventy = 70;
  static double seventyEight = 78;
  static SizedBox shrinkedBox = const SizedBox.shrink();
  static double six = 6;
  static double sixTeen = 16;
  static double sixty = 60;
  static double sixtyFour = 64;
  static double ten = 10;
  static double thirteen = 13;
  static double thirty = 30;
  static double thirtyFive = 35;
  static double thirtyFour = 34;
  static double thirtyNine = 39;
  static double thirtySix = 36;
  static double thirtyTwo = 32;
  static double three = 3;
  static double twelve = 12;
  static double twenty = 20;
  static double twentyEight = 28;
  static double twentyFive = 25;
  static double twentyFour = 24;
  static double twentySix = 26;
  static double twentyThree = 23;
  static double twentyTwo = 22;
  static double two = 2;
  static double zero = 0;

  /// Get the height with the percent value of the screen height.
  static double percentHeight(double percentValue) =>
      (percentValue / screenHeight) * 100;

  /// Get the width with the percent value of the screen width.
  static double percentWidth(double percentValue) =>
      (percentValue / screenHeight) * 100;

  static SizedBox heightedBox(double height) => SizedBox(height: height);

  static SizedBox widthedBox(double width) => SizedBox(width: width);
}

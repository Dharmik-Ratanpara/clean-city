import 'package:flutter/material.dart';
import 'package:clean_city/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillIndigo900 => BoxDecoration(
        color: ColorConstant.indigo900,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.blueGray100,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9000a => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000a,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillYellow400 => BoxDecoration(
        color: ColorConstant.yellow400,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.gray10001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              2,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillBlack90059 => BoxDecoration(
        color: ColorConstant.black90059,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL15 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder38 = BorderRadius.circular(
    getHorizontalSize(
      38,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius customBorderTL24 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        24,
      ),
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius customBorderTL15 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );

  static BorderRadius customBorderBR15 = BorderRadius.only(
    bottomRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

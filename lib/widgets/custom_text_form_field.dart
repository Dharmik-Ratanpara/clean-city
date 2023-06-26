import 'package:clean_city/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.UrbanistRegular14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.UrbanistRomanRegular14:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray300,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray900:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray900:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          left: 15,
          top: 15,
          bottom: 15,
        );
      default:
        return getPadding(
          left: 12,
          top: 13,
          right: 12,
          bottom: 13,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder8,
  CircleBorder24,
}

enum TextFormFieldPadding {
  PaddingT13,
  PaddingT15,
}

enum TextFormFieldVariant {
  None,
  OutlineGray300,
  OutlineGray900,
}

enum TextFormFieldFontStyle {
  UrbanistRegular14,
  UrbanistRegular14Gray900,
  UrbanistRomanRegular14,
}

TextFormField getTextFormField(
    {TextEditingController? textEditingController,
    FormFieldValidator<String>? validation,
    TextInputType? textInputType,
    Function? ontap,
    double? size = 52,
    Widget? suffix,
    Widget? suffixIcon,
    bool textVisible = false,
    double? borderRadius,
    bool? isFillColor = false,
    Widget? prefixIcon,
    // List<TextInputFormatter>? formator,
    bool isReadOnly = false,
    Function(String)? onChanged,
    Color enabledBorder = const Color(0xFFDDDDDD),
    Color focusedBorder = const Color(0xFFDDDDDD),
    Color border = const Color(0xFFDDDDDD),
    bool enable = true,
    String? hintText,
    int? maxLine = 1}) {
  return TextFormField(
    controller: textEditingController,
    cursorColor: Colors.black,
    readOnly: isReadOnly,
    obscureText: textVisible,
    enabled: enable,
    // inputFormatters: formator,
    validator: validation,
    onChanged: onChanged,
    keyboardType: textInputType,
    maxLines: maxLine,
    decoration: InputDecoration(
      filled: isFillColor,
      fillColor: ColorConstant.gray300.withOpacity(0.2),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: enabledBorder),
        borderRadius:
            BorderRadius.circular((borderRadius == null) ? 10 : borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular((borderRadius == null) ? 10 : borderRadius),
        borderSide: BorderSide(color: focusedBorder),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: border),
        borderRadius:
            BorderRadius.circular((borderRadius == null) ? 10 : borderRadius),
      ),
      contentPadding: EdgeInsets.only(
        left: 20,
        right: 10,
        bottom: size! / 2, // HERE THE IMPORTANT PART
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffix: suffix,
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 12,
      ),
    ),
  );
}

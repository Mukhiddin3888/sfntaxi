import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/theme.dart';
import '../styles/theme_warpper.dart';

class CustomTextFiled extends StatelessWidget {
  final Widget? prefix;
  final String hintText;
  final List<TextInputFormatter>? formatter;
  final int? maxLength;
  final int? maxLines;
  final void Function(String val)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool? enabled;
  final Color? focusColor;
  final bool? isReadOnly;
  final EdgeInsets? contentPadding;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final TextCapitalization? textCapitalization;
  const CustomTextFiled({
    Key? key,
    this.prefix,
    this.contentPadding,
    this.focusColor,
    this.hintText = '',
    this.formatter,
    this.maxLength,
    this.suffix,
    this.keyboardType,
    this.maxLines,
    this.enabled,
    this.isReadOnly,
    this.controller,
    this.onChanged,
    this.decoration,
    this.textCapitalization,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, CustomTheme _) {
        return TextField(
          onChanged: onChanged,
          controller: controller,
          enabled: enabled ?? true,
          readOnly: isReadOnly ?? false,
          maxLines: maxLines,
          style: fonts.regular16,
          keyboardType: keyboardType,
          maxLength: maxLength,
          inputFormatters: formatter,
          textCapitalization: textCapitalization  ?? TextCapitalization.none,
          decoration: decoration ??
              InputDecoration(
                contentPadding: contentPadding,
                counterText: '',
                filled: true,
                focusColor: colors.main,
                fillColor: colors.grey.withOpacity(0.12),
                labelStyle: fonts.regular16,
                hintText: hintText,
                hintStyle: fonts.regular16.copyWith(color: colors.grey),
                isDense: true,
                prefixIcon: prefix,
                suffixIcon: suffix,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide:
                      BorderSide(color: focusColor ?? colors.main, width: 1),
                ),
              ),
        );
      },
    );
  }
}

class MaskedTextInputFormatter2 extends TextInputFormatter {
  final String mask;
  final String separator;

  MaskedTextInputFormatter2({
    required this.mask,
    required this.separator,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    debugPrint(oldValue.text);
    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text:
                '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}

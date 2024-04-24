library translated_text;

import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

/// A widget that displays a string that is translated using the FlutterI18n package.
/// If the string starts with 'i18n://', it will be translatedm otherwise it will be displayed as is.
/// All the parameters are the same as the Text widget.
class TranslatedText extends Text {
  const TranslatedText(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaler,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  });

  @override
  Widget build(BuildContext context) {
    assert(
      data != null,
      'A non-null String must be provided to a TranslatedText widget.',
    );

    final text = data!.startsWith('i18n://')
        ? FlutterI18n.translate(context, data!.substring(7))
        : data!;

    return Text(
      text,
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}

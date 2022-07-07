import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:miniapp_recharge/theme/colors.dart' as colors;
import 'package:miniapp_recharge/theme/typography.dart' as typography;

class CaptionFour extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final int maxLines;
  const CaptionFour(
    this.text, {
    this.textAlign = TextAlign.start,
    this.padding = EdgeInsets.zero,
    this.maxLines = 2,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AutoSizeText(
        text,
        maxLines: maxLines,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: colors.royalPurple,
            ),
        textAlign: textAlign,
      ),
    );
  }
}

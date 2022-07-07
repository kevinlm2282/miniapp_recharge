import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:miniapp_recharge/theme/colors.dart' as colors;
import 'package:miniapp_recharge/theme/typography.dart' as typography;

class HeadlineTwo extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final int maxLines;
  const HeadlineTwo(
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
        style: Theme.of(context).textTheme.headline2!.copyWith(
              color: colors.royalPurple,
            ),
        textAlign: textAlign,
      ),
    );
  }
}

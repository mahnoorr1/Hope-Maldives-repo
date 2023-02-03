import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final Color? color;
  final Color? borderColor;
  const AppButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.color,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        height: AppDimensions.normalize(19),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppTheme.c!.primary,
          borderRadius: BorderRadius.circular(8.0),
          border: borderColor != null
              ? Border.all(
                  color: borderColor!,
                  width: 1,
                )
              : null,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

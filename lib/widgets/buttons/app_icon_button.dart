import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/space.dart';

class AppIconButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final Color? color;
  const AppIconButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(360),
      child: Container(
        padding: Space.all(0.655),
        decoration: BoxDecoration(
          color: color ?? Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}

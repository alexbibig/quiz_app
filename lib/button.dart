import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.labelColor = Colors.white,
    this.iconColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.backgroundColor = Colors.lightBlueAccent,
    this.borderRadius = 8,
  });

  final void Function() onPressed;
  final String label;
  final IconData? icon;
  final Color labelColor;
  final Color iconColor;
  final Color borderColor;
  final Color backgroundColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        side: BorderSide(width: 1, color: borderColor),
      ),
      icon: Icon(
        icon,
        color: iconColor,
        size: icon != null ? 20 : 0,
      ),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          color: labelColor,
        ),
      ),
    );
  }
}

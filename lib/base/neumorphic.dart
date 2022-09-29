import 'package:flutter/material.dart';
import 'package:tinycolor2/tinycolor2.dart';

// Неоморфный контейнер
class Neumorphic extends StatelessWidget {
  final Widget child; // Контент
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double radius; // Бордер радиус
  final Color? color;
  final Border? border;

  const Neumorphic({
    Key? key,
    required this.child,
    this.margin,
    this.padding,
    this.color,
    this.border,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: margin,
      padding: padding,
      child: child,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// Неоморфный контейнер
class BaseCard extends StatelessWidget {
  final Widget child; // Контент
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double radius; // Бордер радиус
  final Color? color;
  final Border? border;

  const BaseCard({
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
    Color _color = color ?? Color.fromARGB(1, 42, 42, 52) as Color;

    return Container(
      margin: margin,
      padding: padding,
      child: child,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: border ?? Border.all(color: _color, width: 1),
      ),
    );
  }
}

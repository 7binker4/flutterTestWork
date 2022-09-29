import 'package:flutter/material.dart';
import 'package:tinycolor2/tinycolor2.dart';

// Неоморфная кнопка
class NeumorphicButton extends StatefulWidget {
  final Widget child; // Контент
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double radius; // Бордер радиус
  final Color? color;
  final VoidCallback onPress;
  final bool disabled;

  const NeumorphicButton({
    Key? key,
    required this.child,
    this.margin,
    this.padding,
    this.color,
    required this.radius,
    required this.onPress,
    this.disabled = false,
  }) : super(key: key);

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _active = false;
  Color _color = Colors.grey[200] as Color;

  @override
  void initState() {
    _color = widget.color ?? _color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: !widget.disabled
          ? (TapDownDetails tdd) {
              setState(() {
                _active = true;
              });
            }
          : null,
      onTapUp: !widget.disabled
          ? (TapUpDetails tud) {
              setState(() {
                _active = false;
              });
              widget.onPress();
            }
          : null,
      onTapCancel: !widget.disabled
          ? () {
              setState(() {
                _active = false;
              });
            }
          : null,
      child: Container(
        margin: widget.margin,
        padding: widget.padding,
        child: widget.child,
        // decoration: _active ? _activeDecoration : _unactiveDecoration,
      ),
    );
  }
}

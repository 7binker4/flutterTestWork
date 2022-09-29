import 'package:flutter/material.dart';
import 'package:tinycolor2/tinycolor2.dart';

// Неоморфная кнопка
class BaseButton extends StatefulWidget {
  final Widget child; // Контент
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double radius; // Бордер радиус
  final Color? color;
  final VoidCallback onPress;
  final Border? border;
  final bool disabled;

  const BaseButton({
    Key? key,
    required this.child,
    this.margin,
    this.padding,
    this.color,
    this.border,
    required this.radius,
    required this.onPress,
    this.disabled = false,
  }) : super(key: key);

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  bool _active = false;
  Color _color = Colors.grey[300] as Color;

  @override
  void initState() {
    _color = widget.color ?? _color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _unactiveDecoration = BoxDecoration(
      color: _color,
      borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
      border: widget.border ?? Border.all(color: _color, width: 1),
    );

    var _activeDecoration = BoxDecoration(
      color: TinyColor(_color).darken(2).color,
      borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
      border: widget.border ?? Border.all(color: _color, width: 1),
    );

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
        decoration: _active ? _activeDecoration : _unactiveDecoration,
      ),
    );
  }
}

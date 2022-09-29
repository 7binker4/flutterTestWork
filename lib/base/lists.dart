import 'package:flutter/material.dart';

List<Widget> _buildListWithDividers(
    List<Widget> widgets, Color borderColor, double borderWidth) {
  List<Widget> output = [];
  for (int i = 0; i < widgets.length; i++) {
    output.add(Container(
      child: widgets[i],
      width: double.infinity,
      decoration: BoxDecoration(
        border: i != widgets.length - 1
            ? Border(bottom: BorderSide(color: borderColor, width: borderWidth))
            : null,
      ),
    ));
  }
  return output;
}

class BaseList extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final double? radius;
  final Color borderColor;
  final double borderWidth;
  final bool withDividers;
  const BaseList({
    Key? key,
    required this.children,
    this.margin,
    this.backgroundColor,
    this.radius,
    required this.borderColor,
    required this.borderWidth,
    this.withDividers = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius:
            radius != null ? BorderRadius.all(Radius.circular(radius!)) : null,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: Column(
        children: !withDividers
            ? children
            : _buildListWithDividers(children, borderColor, borderWidth),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/neumorphic_button.dart';
import 'package:flutter_application_1/constants/constants.dart';

enum NavItemMode {
  icon,
  label,
  iconAndLabel,
}

class NavItem {
  final Icon? icon;
  final Text? label;
  bool disabled;
  NavItemMode mode;
  Function? onPress;
  NavItem({
    this.icon,
    this.label,
    this.disabled = false,
    this.mode = NavItemMode.icon,
    this.onPress,
  });
}

class Navbar extends StatelessWidget {
  final List<NavItem> children;
  const Navbar({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.all(Constants.md),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children
                .map(
                  (navItem) => NeumorphicButton(
                    disabled: navItem.disabled,
                    radius: Constants.lg,
                    color: Colors.grey[200],
                    onPress: () {
                      navItem.onPress!();
                    },
                    child: Row(
                      children: [
                        if (navItem.mode == NavItemMode.label ||
                            navItem.mode == NavItemMode.iconAndLabel)
                          navItem.label!,
                        if (navItem.mode == NavItemMode.iconAndLabel)
                          const SizedBox(
                            width: Constants.sm,
                          ),
                        if (navItem.mode == NavItemMode.icon ||
                            navItem.mode == NavItemMode.iconAndLabel)
                          navItem.icon!,
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

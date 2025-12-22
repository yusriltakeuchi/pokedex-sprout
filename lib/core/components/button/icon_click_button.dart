import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';

class IconClickButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onClick;

  const IconClickButton({super.key, required this.icon, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onClick,
        customBorder: const CircleBorder(),
        child: Container(
          width: AppSetting.setWidth(80),
          height: AppSetting.setHeight(80),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Padding(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(10),
              vertical: AppSetting.setHeight(10),
            ),
            child: Center(child: icon),
          ),
        ),
      ),
    );
  }
}

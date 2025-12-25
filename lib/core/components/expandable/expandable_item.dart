import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/click/click_item.dart';
import 'package:pokedex/theme/theme.dart';

/// Expandable with animation
class ExpandableItem extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isExpand;
  final VoidCallback onClick;
  final String? iconPath;

  const ExpandableItem({super.key, 
    required this.title,
    required this.child,
    required this.onClick,
    required this.isExpand,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Clickable(
      onClick: () => onClick(),
      borderRadius: .circular(8),
      child: Padding(
        padding: .symmetric(
          horizontal: AppSetting.setWidth(30),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    if (iconPath != null) ...[
                      Image.asset(
                        iconPath!,
                        width: AppSetting.setWidth(50),
                        height: AppSetting.setHeight(50),
                        fit: BoxFit.contain,
                        color: MyTheme.color.primary,
                      ),
                      SizedBox(width: AppSetting.setWidth(20)),
                    ],
                    Text(
                      title,
                      style: MyTheme.style.title.copyWith(
                        fontSize: AppSetting.setFontSize(35),
                        color: MyTheme.color.black,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: onClick,
                  icon: Icon(
                    isExpand ? Icons.expand_less : Icons.expand_more,
                    color: MyTheme.color.black,
                    size: AppSetting.setFontSize(60),
                  ),
                ),
              ],
            ),
            AnimatedCrossFade(
              firstChild: Container(),
              secondChild: child,
              crossFadeState: isExpand
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}

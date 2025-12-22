import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundHeaderColor(),
        SafeArea(
          child: Padding(
            padding: .symmetric(
              horizontal: AppSetting.setWidth(30),
              vertical: AppSetting.setHeight(20),
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Pokedex",
                        style: MyTheme.style.title.copyWith(
                          fontSize: AppSetting.setFontSize(60),
                          color: MyTheme.color.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Assets.icons.iconFilter.image(
                        width: AppSetting.setWidth(60),
                        height: AppSetting.setHeight(60),
                        color: MyTheme.color.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _BackgroundHeaderColor extends StatelessWidget {
  const _BackgroundHeaderColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSetting.deviceHeight * 0.2,
      color: MyTheme.color.primary,
    );
  }
}

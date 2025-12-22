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
    return SafeArea(
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
                    "Pokedex Sprout",
                    style: MyTheme.style.title.copyWith(
                      fontSize: AppSetting.setFontSize(55),
                      color: MyTheme.color.black,
                    ),
                  ),
                ),
                IconButton(
                  icon: Assets.icons.iconFilter.image(
                    width: AppSetting.setWidth(60),
                    height: AppSetting.setHeight(60),
                    color: MyTheme.color.primary,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


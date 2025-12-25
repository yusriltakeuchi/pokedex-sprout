import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/routing/route.gr.dart';
import 'package:pokedex/theme/theme.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: MyTheme.color.primary,
      body: const SplashBody(),
    );
  }
}

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      /// Navigate to home screen
      context.router.replaceAll([const HomeRoute()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait = AppSetting.isPortrait(context);
    final isTablet = AppSetting.isTablet;

    final logoWidth = isTablet
        ? (isPortrait
              ? AppSetting.deviceWidth * 0.4
              : AppSetting.deviceWidth * 0.25)
        : (isPortrait
              ? AppSetting.deviceWidth * 0.5
              : AppSetting.deviceWidth * 0.35);

    final versionFontSize = isTablet
        ? (isPortrait ? 30.0 : 35.0)
        : (isPortrait ? 40.0 : 30.0);

    return Stack(
      children: [
        Center(
          child: ZoomIn(
            delay: const Duration(milliseconds: 700),
            duration: const Duration(milliseconds: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Assets.images.logoFullWhite.image(width: logoWidth)],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Ver 1.0.0",
                    style: MyTheme.style.subtitle.copyWith(
                      color: MyTheme.color.white,
                      fontSize: AppSetting.setFontSize(versionFontSize),
                    ),
                  ),
                  Space.h(50),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

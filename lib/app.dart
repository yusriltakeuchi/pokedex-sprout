import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/injection/injector.dart';
import 'package:pokedex/routing/route.dart';
import 'package:pokedex/routing/route_observer.dart';
import 'package:pokedex/theme/theme.dart';

final appRouter = inject<AppRouter>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return ScreenUtilInit(
          designSize: orientation == Orientation.portrait
              ? const Size(1080, 1920)
              /// Portrait design size
              : const Size(1920, 1080),

          /// Landscape design size
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return MaterialApp.router(
              routerConfig: appRouter.config(
                navigatorObservers: () => [RouterObserver()],
                deepLinkBuilder: (deepLink) {
                  if (deepLink.path.startsWith("/xxxx")) {
                    /// Do something
                    return deepLink;
                  } else {
                    return DeepLink.defaultPath;
                  }
                },
              ),
              theme: MyTheme.lightTheme,
              darkTheme: MyTheme.darkTheme,
              themeMode: ThemeMode.light,
              title: "Pokedex",
              debugShowCheckedModeBanner: false,
              localeResolutionCallback: (locale, supportedLocales) {
                /// Check if the current device locale is supported
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale?.languageCode &&
                      supportedLocale.countryCode == locale?.countryCode) {
                    return supportedLocale;
                  }
                }
                /// If the locale of the device is not supported, use the first one
                return supportedLocales.first;
              },
              builder: (ctx, child) {
                return MediaQuery(
                  data: MediaQuery.of(ctx).copyWith(),
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: kReleaseMode
                        ? child!
                        : Banner(
                            location: BannerLocation.topEnd,
                            message: kDebugMode ? 'DEBUG' : 'PROFILE',
                            child: child!,
                          ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

# Flutter Obfuscation
-ignorewarnings
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.embedding.engine.** { *; }
-keep class io.flutter.embedding.android.** { *; }
-keep class io.flutter.embedding.engine.plugins.** { *; }
-keep class io.flutter.plugin.common.** { *; }
-keep class io.flutter.plugin.platform.** { *; }
# Firebase
-keep class com.google.firebase.messaging.FirebaseMessagingService { *; }
-keep class com.google.firebase.iid.FirebaseInstanceIdReceiver { *; }
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# Flutter Local Notifications
-keep class com.dexterous.** { *; }
-keep class io.flutter.plugins.** { *; }

# Gson / JSON parsing
-keep class * extends java.util.List
-keepattributes Signature

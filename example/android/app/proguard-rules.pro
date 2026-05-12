# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.

# Flutter specific rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.embedding.** { *; }

# Keep all Flutter engine classes
-keep class io.flutter.embedding.engine.** { *; }

# Keep all Flutter platform channel classes
-keep class io.flutter.plugin.common.** { *; }

# Keep all Flutter method channel classes
-keep class io.flutter.plugin.common.MethodChannel { *; }
-keep class io.flutter.plugin.common.BasicMessageChannel { *; }
-keep class io.flutter.plugin.common.BinaryMessenger { *; }

# Keep all Flutter plugin registry classes
-keep class io.flutter.plugin.common.PluginRegistry { *; }

# Keep all Flutter application classes
-keep class io.flutter.app.FlutterApplication { *; }

# Keep all Flutter activity classes
-keep class io.flutter.embedding.android.** { *; }

# Keep all Flutter JNI classes
-keep class io.flutter.jni.** { *; }

# Keep all Dart related classes
-keep class dart.** { *; }

# Keep all generated classes by Flutter
-keep class **_GeneratedPluginRegistrant { *; }

# Keep all native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep all enum classes
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep all Parcelable implementations
-keep class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

# Keep Google Play Core classes for Flutter deferred components
-keep class com.google.android.play.core.** { *; }
-keep class com.google.android.play.core.splitcompat.** { *; }
-keep class com.google.android.play.core.splitinstall.** { *; }
-keep class com.google.android.play.core.tasks.** { *; }

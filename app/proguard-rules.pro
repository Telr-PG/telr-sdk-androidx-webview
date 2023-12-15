# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
 -ignorewarnings
# Basic ProGuard rules for Firebase Android SDK 2.0.0+
-keep class com.firebase.** { *; }
-keep class org.apache.** { *; }
-keepnames class com.fasterxml.jackson.** { *; }
-keepnames class javax.servlet.** { *; }
-keepnames class org.ietf.jgss.** { *; }
-keep class com.telr.mobile.sdk.entity.response.payment.** { *; }
-keep class com.telr.mobile.sdk.entity.response.status.** { *; }
-keep class com.telr.mobile.sdk.entity.request.payment.** { *; }
-keep class com.telr.mobile.sdk.entity.request.status.** { *; }
-dontwarn org.apache.**
-dontwarn org.w3c.dom.**
-renamesourcefileattribute SourceFile
-keep public class * extends android.app.Application
-optimizationpasses 5
-keepattributes *Annotation*,EnclosingMethod
-keep class * implements android.os.Parcelable {
     public static final android.os.Parcelable$Creator *;
   }
 -keepclassmembers public class org.springframework {
     public *;
 }
 -keep interface org.simpleframework.xml.core.Label {
    public *;
 }
 -keep class * implements org.simpleframework.xml.core.Label {
    public *;
 }
 -keep interface org.simpleframework.xml.core.Parameter {
    public *;
 }
 -keep class * implements org.simpleframework.xml.core.Parameter {
    public *;
 }
 -keep interface org.simpleframework.xml.core.Extractor {
    public *;
 }
 -keep class * implements org.simpleframework.xml.core.Extractor {
    public *;
 }

 -keepattributes SourceFile, LineNumberTable
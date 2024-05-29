# 📱 Plarfrom_converter_app 📱 

### 1. Platform-Specific Code and Plugins
Platform Channels:

* *Android* : Flutter uses Java/Kotlin for native Android code. Developers can invoke Android-specific APIs and use Android SDK functionalities through platform channels.
* *iOS* : Flutter uses Objective-C/Swift for native iOS code. Similarly, developers can call iOS-specific APIs using platform channels.
* *Plugins* :Plugins might have different implementations for Android and iOS. When integrating a plugin, you might notice separate setup steps and configuration for each platform.
### 2. UI and Design Guidelines
Material Design vs. Cupertino:

* *Android*: Typically follows Material Design guidelines, which is Google's design language for Android apps. Flutter provides a rich set of Material widgets.
* *iOS*: Uses Cupertino widgets that mimic Apple's iOS design guidelines, ensuring the app feels native on iOS devices.

Scaffolding:

* *Android*: Uses Scaffold widget to implement basic Material Design layout structure.
* *iOS*: Uses CupertinoPageScaffold for creating basic layout structure in accordance with Cupertino design.

### 3. Build and Deployment
Build Process:

* *Android*: Builds with Gradle, and the output is an APK (Android Package) or AAB (Android App Bundle).
* *iOS*: Uses Xcode and outputs an IPA (iOS App Archive). This process requires a macOS environment for development and deployment due to Xcode dependency.

Deployment:

* *Android*: Apps are distributed through Google Play Store or directly as APKs/AABs.
* *iOS*: Apps are distributed through the Apple App Store, requiring a review process and adherence to Apple's guidelines.

### 4. Development and Testing
Emulators and Simulators:

* *Android*: Android Studio provides an Android Emulator with various device configurations.
* *iOS*: Xcode provides an iOS Simulator for testing on different iPhone and iPad models.

Hot Reload and Hot Restart:
* Both platforms support Flutter’s hot reload and hot restart features, but the speed and performance might slightly vary due to differences in the underlying systems.

### 5. Platform-Specific Features and Permissions
Permissions:

* *Android*: Permissions are managed in the AndroidManifest.xml file. Runtime permissions also need to be handled in code for versions Marshmallow (API level 23) and above.
* *iOS*: Permissions are managed in the Info.plist file, and you need to provide usage descriptions for accessing certain features like the camera, location, etc.

Background Services:

* *Android*: More flexibility with background services and jobs, but requires careful handling of battery optimization and Doze mode.
* *iOS*: More restrictive with background tasks, and specific modes need to be enabled for background processing (like background fetch, push notifications).

### 6. User Interaction and Navigation
Back Navigation:

* *Android*: Physical back button handling needs to be managed, as Android devices typically have a dedicated back button.
* *iOS*: Navigation is usually managed through the navigation bar, with no physical back button. Swipe gestures are also common for back navigation.

Gestures:

* Android and iOS: Flutter provides a unified way to handle gestures, but certain platform-specific gestures might need custom handling.

### 7. Platform-Specific APIs and SDKs
* *Android*:Provides APIs for features like Google Play Services, Android-specific hardware interactions, etc.
* *iOS*:Provides APIs for iOS-specific features like ARKit, iCloud, and integration with other Apple services.

## Android Platfrom


<p align = 'center'>
  <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/da1239cf-d49b-48d6-828e-35f50ffb0cda' width = 250>
  <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/bb32cfae-9710-4784-8de5-82299e7fee8c' width = 250>
  <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/680841ff-9f4e-4a76-a347-576741df31d3' width = 250>
  <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/fa3eb112-ddfc-40cf-a7b6-7f80c079e02c' width = 250>


</p>






## IOS Platfrom


<p align = 'center'>
    <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/6b4e8a16-1bbb-4376-818f-0aa0f4dce2f1' width = 250>
    <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/ffe4ef7a-82e4-4f8f-ba0d-b16e0ba92915' width = 250>
    <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/f60ecc99-4b16-4028-81c0-f57d3a478a3e' width = 250>
    <img src='https://github.com/Rajputniraj6983/platform_converter_app/assets/143181391/bd74831b-5c67-4ec6-980c-de95d7911f3d' width = 250>
</p>
<div align = 'center'>
<a href='https://github.com/DarshanPatel311/Plarfrom_Converter_App/tree/master/lib' align = 'center'>👉 📱  Go to dart file 📱  👈</a>
</div>

## Video
<video src='' align = 'center'>

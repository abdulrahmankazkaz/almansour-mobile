## Getting Started
**when you add new key you need to run this two command:**
- dart run easy_localization:generate -S assets/translations -O lib/generated
- dart run easy_localization:generate -S assets/translations -O lib/generated -o locale_keys.g.dart -f keys
  **you need to run one of this command when any change happen to any models:**
- dart run build_runner watch
- dart run build_runner watch --delete-conflicting-outputs
- dart run build_runner build --delete-conflicting-outputs
  **for launcher icon**
- flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
- **for splash screen**
- dart run flutter_native_splash:create --path=flutter_native_splash.yaml
- **for app name**
- dart run launcher_name:main

- **mason**
- To create bloc mason make flutter_bloc_feature (should run before feature path)
- to create feature mason make arch  (should run before feature path)
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **mac_mobile**, the Almansour Iraq mobile application built with Flutter. It's a customer-facing automotive service app that supports online booking, mobile services, spare parts ordering, car management, and more.

## Essential Commands

### Localization
When adding new translation keys:
```bash
dart run easy_localization:generate -S assets/translations -O lib/generated
dart run easy_localization:generate -S assets/translations -O lib/generated -o locale_keys.g.dart -f keys
```

### Code Generation
Run after modifying any models (entities with `@freezed`, `@JsonSerializable`, or Retrofit datasources):
```bash
dart run build_runner watch  # Recommended for active development
dart run build_runner watch --delete-conflicting-outputs  # If you encounter conflicts
dart run build_runner build --delete-conflicting-outputs  # One-time build
```

### Assets
Launcher icon:
```bash
flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
```

Splash screen:
```bash
dart run flutter_native_splash:create --path=flutter_native_splash.yaml
```

App name:
```bash
dart run launcher_name:main
```

### Mason Templates
Create new feature scaffolding:
```bash
mason make arch  # Create feature structure (run this first)
mason make flutter_bloc_feature  # Create BLoC for feature (run before feature path)
```

### Standard Flutter Commands
```bash
flutter pub get  # Install dependencies
flutter run  # Run the app
flutter analyze  # Run static analysis
flutter test  # Run tests
flutter clean  # Clean build artifacts
```

## Architecture

### Clean Architecture with Feature-Based Organization

The project follows **Clean Architecture** principles with a feature-based folder structure. Each feature is self-contained with its own presentation, domain, and data layers.

```
lib/
├── app/                          # App-level configuration
│   ├── app.dart                  # MyApp widget with BLoC providers
│   ├── dependency_injection.dart # GetIt service locator setup
│   └── bloc_observer.dart        # Global BLoC observer
├── core/                         # Shared utilities and infrastructure
│   ├── network/                  # Dio setup, interceptors, network info
│   ├── models/                   # Shared models (BasicModel, DefaultDataModel, etc.)
│   ├── router/                   # GoRouter configuration
│   ├── utils/                    # Helpers, extensions, preferences
│   └── constants/                # App constants and enums
└── features/                     # Feature modules
    └── [feature_name]/
        ├── data/
        │   ├── datasources/      # Retrofit API clients (*.g.dart generated)
        │   └── repositories/     # Repository implementations
        ├── domain/
        │   ├── entities/         # Freezed data models
        │   ├── repositories/     # Repository interfaces
        │   └── usecases/         # Business logic use cases
        └── presentation/
            ├── bloc/             # BLoC state management
            ├── pages/            # Full screen widgets
            └── widgets/          # Feature-specific components
```

### Key Features
- **auth**: Phone authentication with OTP verification
- **car**: Brand and car browsing
- **customer_car**: User's car management and odometer tracking
- **online_booking**: Service appointment booking at dealerships
- **mobile_service**: Mobile service booking with location selection
- **quick_service**: Quick service options
- **spare_parts**: Spare parts catalog and ordering
- **cart**: Shopping cart and order management
- **profile**: User profile management
- **marketing**: Promotions and offers
- **installment**: Car financing/installment information
- **notification**: Push notifications with Firebase
- **feedback**: User feedback submission
- **survey**: Surveys for user feedback
- **guest**: Guest car checking functionality

### Dependency Injection

Uses **GetIt** for service location. All dependencies are registered in `lib/app/dependency_injection.dart`:
- `initAppModule()`: Initializes core dependencies (SharedPreferences, Dio, NetworkInfo)
- `registerDataSource()`: Registers Retrofit API clients
- `registerRepositories()`: Registers repository implementations
- `registerUseCases()`: Registers use cases

Access services via `getIt<ServiceType>()` (e.g., `getIt<AppPreferences>()`).

### State Management

Uses **flutter_bloc** with **bloc_concurrency**. All feature BLoCs are provided at the app level in `lib/app/app.dart` via `MultiBlocProvider`.

Common pattern:
- Events trigger use cases
- Use cases call repositories
- Repositories call datasources (API clients)
- Results are mapped to BLoC states (typically using Freezed unions)

### Routing

**GoRouter** configuration in `lib/core/router/routes_manager.dart`:
- Uses `StatefulShellRoute` for bottom navigation persistence
- All routes define both name constants (`RoutesNames`) and path constants (`RoutesPaths`)
- Redirect logic handles authentication state and user verification
- Wraps routes with `MediaQuery` to enforce text scaling factor of 1.0

### Network Layer

- **Dio** with custom interceptors:
  - `RefreshTokenInterceptor`: Handles token refresh on 401 errors
  - `GeneralDioInterceptor`: Adds auth headers and logging
- **Retrofit** for type-safe API clients (datasources)
- All API responses use wrapper models: `DefaultDataModel<T>`, `DefaultSuccessModel`, or `PaginationDataModel<T>`

### Code Generation Dependencies

The project uses several code generators:
- **freezed**: Immutable data models with unions and copy-with
- **json_serializable**: JSON serialization/deserialization
- **retrofit_generator**: Type-safe REST API clients

Always run `build_runner` after modifying:
- Models with `@freezed` annotation
- Models with `@JsonSerializable` annotation
- Datasources with `@RestApi` annotation

### Localization

- **easy_localization** for i18n
- Supports Arabic (ar) and English (en)
- Translation files: `assets/translations/ar.json`, `assets/translations/en.json`
- Generated keys: `lib/generated/locale_keys.g.dart`
- Access via `LocaleKeys.keyName.tr()`
- Custom fonts for each locale: Almarai (Arabic), IBMPlexSans (English)

### Firebase Integration

- **Firebase Messaging**: Push notifications with background handler
- **Firebase Analytics**: User behavior tracking (production only)
- **Firebase Crashlytics**: Crash reporting (production only, filters 503 errors)
- FCM token management handled via `NotificationService` and `UpdateFCMToken` use case

### UI Framework

- **flutter_screenutil**: Responsive sizing (design size: 428x928)
- **responsive_framework**: Breakpoint-based responsive design
- Custom icons via icon fonts: `AppIcons`, `ExtraAppIcons`
- Theme management in `lib/core/utils/resources/theme_manager.dart`
- Locale-aware theming (different fonts per language)

### Local Storage

`AppPreferences` wraps `SharedPreferences` with specialized accessors:
- `userPreferences`: User data, tokens, login state
- `languagePreferences`: Locale settings
- `themePreferences`: Theme settings

## Important Patterns

### Creating a New Feature

1. Run `mason make arch` to scaffold the feature structure
2. Run `mason make flutter_bloc_feature` to create BLoC boilerplate
3. Define entities in `domain/entities/` with `@freezed` annotation
4. Create repository interface in `domain/repositories/`
5. Create use cases in `domain/usecases/`
6. Create Retrofit datasource in `data/datasources/` with `@RestApi`
7. Implement repository in `data/repositories/`
8. Register dependencies in `lib/app/dependency_injection.dart`
9. Add BLoC provider to `lib/app/app.dart`
10. Create pages/widgets in `presentation/`
11. Add routes to `lib/core/router/routes_manager.dart`
12. Run `dart run build_runner build --delete-conflicting-outputs`

### API Response Handling

Most API responses follow these patterns:
```dart
// Single data item
DefaultDataModel<YourEntity>

// Success/failure only
DefaultSuccessModel

// Paginated data
PaginationDataModel<YourEntity>
```

Use `multiple_result` package for error handling in repositories:
```dart
Future<Result<Data, Failure>> methodName() async {
  // Returns Success(data) or Error(failure)
}
```

### Adding Translations

1. Add key-value pairs to `assets/translations/ar.json` and `assets/translations/en.json`
2. Run the localization generation commands (see Essential Commands)
3. Use `LocaleKeys.yourKey.tr()` in code

## Development Notes

- **Design System**: Uses consistent spacing, colors, and typography via `lib/core/utils/resources/`
- **Navigation**: Always use named routes (`context.pushNamed(RoutesNames.yourRoute)`)
- **Error Handling**: 503 errors are filtered from crash reporting
- **Text Scaling**: Forced to 1.0 via MediaQuery wrapper on routes
- **Orientation**: Locked to portrait mode in `main.dart`
- **Build Variants**: Firebase Crashlytics and Analytics only enabled in release mode
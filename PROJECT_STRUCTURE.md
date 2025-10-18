# Keep In Touch (KIT) - Project Structure

This document outlines the complete project structure for the Keep In Touch messaging application, following Clean Architecture principles and Flutter best practices.

## 📁 Project Structure

```
lib/
├── core/                           # Core application infrastructure
│   ├── di/                        # Dependency injection setup
│   │   └── injection_container.dart
│   ├── extensions/                # Dart extension methods
│   │   └── extensions.dart
│   ├── logger/                    # Logging utilities
│   │   └── logger.dart
│   ├── network/                   # Network layer
│   │   ├── dio_client.dart
│   │   └── interceptors/          # HTTP interceptors
│   ├── router/                    # Navigation and routing
│   │   └── app_routes.dart
│   ├── theme/                     # App theming
│   │   └── app_theme.dart
│   └── utils/                     # Common utilities
│       └── app_utils.dart
├── features/                      # Feature modules (Clean Architecture)
│   ├── auth/                      # Authentication feature
│   │   ├── data/
│   │   │   ├── datasources/       # Data sources (API, local storage)
│   │   │   │   └── auth_remote_data_source.dart
│   │   │   ├── models/            # Data models (JSON serialization)
│   │   │   └── repositories/      # Repository implementations
│   │   │       └── auth_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/          # Business entities
│   │   │   │   └── user.dart
│   │   │   ├── repositories/      # Repository contracts
│   │   │   │   └── auth_repository.dart
│   │   │   └── usecases/          # Business logic
│   │   │       ├── login_usecase.dart
│   │   │       └── logout_usecase.dart
│   │   └── presentation/
│   │       ├── bloc/              # State management
│   │       │   └── auth_bloc.dart
│   │       ├── pages/             # UI screens
│   │       └── widgets/           # Feature-specific widgets
│   ├── contacts/                  # Contacts management feature
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   └── contact_remote_data_source.dart
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   │       └── contact_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── contact.dart
│   │   │   ├── repositories/
│   │   │   │   └── contact_repository.dart
│   │   │   └── usecases/
│   │   │       └── get_contacts_usecase.dart
│   │   └── presentation/
│   │       ├── bloc/
│   │       │   └── contacts_bloc.dart
│   │       ├── pages/
│   │       └── widgets/
│   └── chat/                      # Chat/messaging feature
│       ├── data/
│       │   ├── datasources/
│       │   │   └── chat_remote_data_source.dart
│       │   ├── models/
│       │   └── repositories/
│       │       └── chat_repository_impl.dart
│       ├── domain/
│       │   ├── entities/
│       │   │   └── message.dart
│       │   ├── repositories/
│       │   │   └── chat_repository.dart
│       │   └── usecases/
│       │       ├── get_messages_usecase.dart
│       │       └── send_message_usecase.dart
│       └── presentation/
│           ├── bloc/
│           │   └── chat_bloc.dart
│           ├── pages/
│           └── widgets/
├── shared/                        # Shared/common components
│   ├── constants/                 # App constants
│   └── widgets/                   # Reusable widgets
│       ├── custom_button.dart
│       ├── custom_text_field.dart
│       └── status_widgets.dart
├── firebase_options.dart          # Firebase configuration
├── main.dart                     # App entry point
├── empty_screen.dart             # Placeholder screen
└── tabs_page.dart               # Tab navigation
```

## 🏗️ Architecture Overview

### Clean Architecture Layers:

1. **Presentation Layer** (`presentation/`)
   - **Pages**: UI screens and navigation
   - **Widgets**: Reusable UI components
   - **BLoC**: State management and business logic coordination

2. **Domain Layer** (`domain/`)
   - **Entities**: Core business models
   - **Repositories**: Contracts for data access
   - **Use Cases**: Application business rules

3. **Data Layer** (`data/`)
   - **Data Sources**: API clients, local storage
   - **Models**: Data transfer objects with JSON serialization
   - **Repository Implementations**: Concrete implementations of domain contracts

### Core Infrastructure:

- **Dependency Injection**: GetIt for service location
- **State Management**: BLoC pattern for predictable state management
- **Navigation**: Go Router for declarative routing
- **Network**: Dio HTTP client with interceptors
- **Theme**: Material Design 3 with custom color scheme
- **Firebase**: FCM for push notifications, Analytics for usage tracking

## 📦 Dependencies

### Core Dependencies:
- `flutter_bloc`: State management
- `get_it`: Dependency injection
- `dio`: HTTP client
- `go_router`: Navigation
- `shared_preferences`: Local storage
- `equatable`: Value equality

### Firebase:
- `firebase_core`: Firebase initialization
- `firebase_messaging`: Push notifications
- `firebase_analytics`: Usage analytics

### UI/UX:
- `flutter_local_notifications`: Local notifications
- Material Design 3 theming

## 🚀 Getting Started

1. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

2. **Configure Firebase**:
   - Add your `google-services.json` (Android)
   - Add your `GoogleService-Info.plist` (iOS)
   - Update Firebase configuration

3. **Run the App**:
   ```bash
   flutter run
   ```

## 🔧 Development Guidelines

### Code Organization:
- Each feature is self-contained with its own data, domain, and presentation layers
- Shared components go in the `shared/` directory
- Core infrastructure is in the `core/` directory

### State Management:
- Use BLoC for complex state management
- Each feature has its own BLoC
- Events represent user actions or external triggers
- States represent UI states

### Navigation:
- Centralized route definitions in `app_routes.dart`
- Use Go Router for type-safe navigation
- Deep linking support

### Testing:
- Unit tests for use cases and repositories
- Widget tests for UI components
- Integration tests for complete user flows

### Code Style:
- Follow Dart/Flutter official style guide
- Use meaningful names for classes and methods
- Document public APIs
- Use const constructors where possible

## 🔄 Next Steps

1. **Install Dependencies**: Run `flutter pub get` to install all packages
2. **Implement Real API**: Replace mock data sources with actual API calls
3. **Add Authentication UI**: Create login and registration screens
4. **Build Contact List**: Implement contacts listing and detail screens
5. **Create Chat Interface**: Build messaging UI with real-time capabilities
6. **Add Firebase Integration**: Set up FCM for push notifications
7. **Implement Tests**: Add unit, widget, and integration tests
8. **Performance Optimization**: Profile and optimize for production

This structure provides a solid foundation for a scalable, maintainable messaging application following industry best practices.

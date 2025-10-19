1. core-development-standards.mdc
---
description: Core development and refactoring task to significantly improve its overall quality, maintainability, readability, performance, accessibility, and adherence to our established development best practices.
globs: 
alwaysApply: false
---
# Core Development & Refactoring Standards
# Core Development & Refactoring Standards

This document outlines the comprehensive guidelines for Flutter/Dart development and refactoring. These standards should be applied when creating new features, editing existing code, or performing dedicated refactoring tasks.

---

## I. Widget Structure & Reusability

### 1. Widget Separation
*   **Action:** Refactor widget construction. Avoid using `_buildSomePart()` methods for separating widget logic. Instead, encapsulate distinct UI pieces into their own `StatelessWidget` or `StatefulWidget` classes.
*   **Privacy:** For widgets not intended for reuse outside their current screen or component, prefix their class names with an underscore (e.g., `_MyPrivateHelperWidget`).
*   **Rationale Check:** This improves testability and component isolation.

### 2. Callback Extraction for Reusability
*   **Action:** For widgets designed to be reusable, extract all event-handling logic (callbacks like `onPressed`, `onChanged`, etc.) into parameters passed via the widget's constructor.
*   **Impact:** This enhances the widget's flexibility and decouples it from specific business logic.

---

## II. Code Clarity, Modularity & Maintainability

### 3. File Size Management & Modularity
*   **Action:** Break down overly large Dart files into smaller, more focused files. Aim for a guideline of **100-200 lines of code per file**, excluding comments and imports. This is a guideline, not an absolute; use judgment to ensure logical cohesion within each file.
*   **Focus:** Each file should ideally represent a single responsibility or a tightly coupled set of functionalities (e.g., a single complex widget and its private helpers, a specific service, a collection of related constants).
*   **Benefits:** This improves code navigation, reduces cognitive load, and facilitates parallel development.

### 4. Eliminate Magic Numbers
*   **Action:** Identify and remove all 'magic numbers' (hardcoded numerical constants without clear meaning). Consolidate these into a dedicated private class (e.g., `_AppConstants` or a more context-specific name) for improved readability and maintainability.
*   **Organization:** Determine the most logical place to define this constants class for the given scope.

### 5. Centralized Asset & Color Management
*   **Action:** Ensure all application asset paths (images, fonts, etc.) and color definitions are centralized. Relocate them to `@app_assets.dart` and `@app_colors.dart` respectively.
*   **Benefit:** This streamlines theme updates and resource management.

### 6. Standardized Spacing
*   **Action:** Replace all instances of `SizedBox` used purely for creating space/gaps with the `Gap()` widget (from the `gap` package, assuming it's a project dependency).
*   **Consistency:** Using a dedicated spacing widget like `Gap` offers better semantic clarity and consistency.

---

## III. Styling & Theming

### 7. Theme-based Text Styling
*   **Action:** Cease direct `TextStyle` creation within widgets. All text styling MUST be derived from the `context.theme` (e.g., `Theme.of(context).textTheme.bodyMedium`).
*   **Adherence:** This enforces design system consistency and facilitates easier global theme changes.

---

## IV. Internationalization (i18n) & Localization (l10n)

### 8. Hardcoded Text Externalization
*   **Action:** Move all user-facing hardcoded strings into `.arb` files for internationalization.
*   **Process:** Outline a clear strategy for key naming and organization within the `.arb` files.

### 9. Standardized l10n Access
*   **Action:** Replace direct calls to `AppLocalizations.of(context)` with the conventional `context.i18n` extension for retrieving localized strings (assuming `context.i18n` is a defined project extension).
*   **Efficiency:** This abstraction offers cleaner code and easier maintenance.

---

## V. Responsiveness & Adaptability

### 10. Cross-Device UI Compatibility
*   **Action:** Review and refactor UI layouts to ensure all text and widgets display correctly and aesthetically across various screen sizes and orientations. Leverage `Expanded`, `Flexible`, `LayoutBuilder`, and `MediaQuery` appropriately.
*   **Testing Hint:** Consider key screen sizes or aspect ratios during refactoring and development.

---

## VI. Accessibility & Semantics

### 11. Enhance Widget Semantics for Accessibility
*   **Action:** As you refactor or build widgets, ensure they are annotated with appropriate semantics to improve accessibility for users relying on assistive technologies (e.g., screen readers). Utilize widgets like `Semantics`, `MergeSemantics`, `ExcludeSemantics`, and ensure proper labeling for interactive elements (e.g., using `tooltip` or `Semantics(label: '...')` for `IconButton`s, `TextField`s, etc.). Provide descriptive labels for images and icons.
*   **Focus Areas:** Pay particular attention to:
    *   Interactive elements (buttons, switches, sliders, form fields).
    *   Images and icons (provide meaningful alternative text or labels).
    *   Custom-painted widgets or complex UI structures that might not have clear default semantics.
    *   Grouping related content using `MergeSemantics` where appropriate.
*   **Testing Hint:** Manually verify the effectiveness of implemented semantics (e.g., by enabling TalkBack on Android or VoiceOver on iOS).
*   **Importance:** Robust semantic information directly contributes to a more inclusive and usable application for all users.

---

## VII. Code Health & Best Practices

### 12. Color Opacity Implementation
*   **Action:** Replace all uses of `Color.withOpacity()` with `Color.withAlpha()`. As per Flutter's guidance, `withOpacity()` is deprecated due to precision loss.
*   **Reference:** Ensure understanding of the conversion: `someColor.withAlpha((opacityValue * 255).round())`.

### 13. Utility Function Management
*   **Action:** For any broadly applicable utility functions identified or created during refactoring:
    *   First, check if similar functionality already exists in `lib/core/extensions/` or `lib/core/utils/`.
    *   If not, extract new, reusable utility functions and place them in the appropriate folder within `lib/core/`.
*   **Criteria:** Determine what makes a function a good candidate for `core/utils` versus a local helper based on its reusability and scope.

---

## VIII. Freezed v3 Migration

### 14. Update Freezed Classes
*   **Action:** Migrate all Freezed classes to v3 syntax by adding required keywords (`sealed` or `abstract`):
    *   Use `sealed` for classes with multiple factory constructors (union types)
    *   Use `abstract` for classes with single factory constructors
*   **Constructor Naming:** For public Freezed classes (especially BLoC states/events) that will be used in switch case pattern matching across multiple files, do NOT use underscore prefix in constructor names to ensure public accessibility
*   **Pattern Matching:** Replace all `.map()`, `.when()`, `.maybeMap()`, and `.maybeWhen()` calls with Dart's built-in switch pattern matching syntax
*   **Example:**
    ```dart
    // Before (v2)
    @freezed
    class Result with _$Result {
      factory Result.success(String data) = Success;
      factory Result.error(String message) = Error;
    }
    
    // Usage
    final res = result.map(
      success: (data) => 'Success: $data',
      error: (error) => 'Error: $error',
    );
    
    // After (v3)
    @freezed
    sealed class Result with _$Result {
      factory Result.success(String data) = Success; // Good: No underscore for public use
      factory Result.error(String message) = Error;
    }
    
    // Usage
    final res = switch (result) {
      Success(:final data) => 'Success: $data',
      Error(:final message) => 'Error: $message',
    };
    ```

---
====================================
flutter-coding-guidelines.mdc
---
description: 
globs: 
alwaysApply: true
---
---
description: Applies general Flutter coding guidelines across the entire project, focusing on current tech stack, state management, form validation, best practices.
globs: lib/**/*.*
---
# Flutter Coding Guidelines

## Null Safety
- Always use proper null safety practices and avoid using `!` operator when possible
- Use `?.` for safe navigation and `??` for providing default values
- Consider using `required` for mandatory constructor parameters
- Use nullable types (`Type?`) only when a value can genuinely be null

## Error Handling
- Use Either<L, R> from fpdart package for error handling
- Left side should contain error/failure object
- Right side should contain success value
- Create specific Failure classes that extend a base Failure class using Freezed v3 syntax
- Use switch pattern matching instead of .map/.when for handling Either results
- **Important**: For Freezed classes (especially BLoC states/events) that will be used in switch case pattern matching across multiple files, do NOT use underscore prefix in constructor names to ensure public accessibility
- Example:
  ```dart
  @freezed
  sealed class AuthFailure with _$AuthFailure {
    const factory AuthFailure.invalidCredentials() = InvalidCredentials;
    const factory AuthFailure.networkError(String message) = NetworkError;
    const factory AuthFailure.serverError(String message) = ServerError;
  }
  
  // Usage with switch pattern matching
  Either<AuthFailure, User> result = await repository.signIn(credentials);
  final message = switch (result) {
    Left(:final value) => switch (value) {
      InvalidCredentials() => 'Invalid email or password',
      NetworkError(:final message) => 'Network error: $message',
      ServerError(:final message) => 'Server error: $message',
    },
    Right(:final value) => 'Welcome ${value.name}!',
  };
  ```

## Naming Conventions
- Use `camelCase` for variables and functions
- Use `PascalCase` for classes, enums, and typedefs
- Use `snake_case` for files and directories
- Prefix private variables with underscore (`_myPrivateVar`)
- Use descriptive names that reflect purpose
- Avoid abbreviations and single letter names except for simple loops
- Avoid magic numbers

## Widget Composition
- Keep widgets small and focused on single responsibility
- Extract reusable widgets into separate components
- Use composition over inheritance for widget reuse
- Implement StatelessWidget when state isn't needed
- Implement const constructors when possible
- Use ListView.builder and GridView.builder for dynamic lists
- Wrap long widget trees with Builder methods to improve readability

## Routing
- Use GoRouter for navigation
- Prefer `context.push()` over `context.go()` for stack-based navigation
- Use `context.pop()` to navigate back
- Define routes in a central location
- Implement route guards for authenticated routes

## Form Validation
- Use Formz package for form validation
- Create input models extending FormzInput
- Implement validation logic in pure functions
- Use BLoC for form state management

## Asset Management
- Store assets in `<root_folder>/assets/`
- Organize assets by type (images, fonts, etc.)
- Use const constructors for asset paths
- Reference assets in pubspec.yaml correctly
- Use appropriate asset resolution for images
- Consider using SVGs for scalable graphics with flutter_svg

## Code Structure
- Follow feature-first architecture
- Keep related code together within a feature
- Follow Clean Architecture principles when applicable
- Separate UI, domain, and data layers
- Use abstractions (interfaces) for dependencies
- Implement design patterns appropriate to the problem


=========================
3. flutter-core-rules.mdc
---
description: 
globs: 
alwaysApply: true
---
---
description: Applies Flutter best practices and coding guidelines to the core directory, focusing on constants, themes, utilities, and widgets.
globs: lib/core/**/*.*
---
- Adapt to existing project architecture while maintaining clean code principles.
- Use Flutter 3.x features and Material 3 design.
- Implement proper null safety practices.
- Follow proper naming conventions.
- Use proper widget composition.
- Keep widgets small and focused.
- Use const constructors when possible.
- Implement proper widget keys.
- Follow proper layout principles.
- Store localized texts in arb files in lib/shared/i18n/arb/

# Core Module Guidelines

## Architecture
- Follow a layered architecture within the core module
- Core components should be reusable across the application
- Avoid direct dependencies on feature-specific code
- Use abstractions and interfaces where appropriate
- Keep core functionality focused on app-wide concerns

## Dependency Injection
- Register core services in a dedicated DI module
- Use `@lazySingleton` for core services that should be instantiated once
- Register environment-specific configurations as singletons
- Provide clear documentation for complex service registrations

## Theming
- Implement theme data in `lib/core/theme/`
- Use Material 3 design components and tokens
- Define color schemes for both light and dark themes
- Extract text styles into reusable ThemeData extensions
- Use semantic naming for colors and styles (e.g., `primaryActionColor` not `blueColor`)
- Implement theme extensions for custom styles

## Networking
- Implement base networking in `lib/core/network/`
- Create base API client with interceptors for common concerns
- Implement proper error handling and parsing
- Handle authentication consistently across all requests
- Use typed models for request/response handling

## Routing
- Implement the app router in `lib/core/router/`
- Define route constants for all app routes
- Use typed navigation when possible
- Implement route guards for authentication
- Handle deep links consistently
- Group routes logically by feature

## Utilities
- Create focused utility classes in `lib/core/utils/`
- Implement pure functions where possible
- Properly document utility functions with clear purpose
- Write unit tests for all utility functions
- Group related utilities into logical files
- Example:
  ```dart
  class DateUtils {
    static String formatDateTime(DateTime date, {String format = 'yyyy-MM-dd'}) {
      return DateFormat(format).format(date);
    }
    
    // Other date utility methods
  }
  ```

## Extensions
- Place extensions in `lib/core/extensions/`
- Create targeted extensions that enhance specific types
- Document each extension method clearly
- Keep extensions focused and single-purpose
- Write unit tests for complex extensions
- Example:
  ```dart
  extension StringExtensions on String {
    bool get isValidEmail => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
    
    String capitalize() => isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
    
    // Other string extensions
  }
  ```

## Constants
- Store app-wide constants in `lib/shared/constants/`
- Group constants logically (e.g., API endpoints, feature flags)
- Use strong typing for constants
- Avoid magic numbers and strings in code
- Store app-wide colors in `lib/shared/color/`
- Example:
  ```dart
  class ApiConstants {
    static const String baseUrl = 'https://api.example.com';
    static const int timeout = 30000; // ms
    static const Map<String, String> defaultHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }
  ```

## Responsive Design
- Use responsive_builder for responsive dimensions
- Apply consistent spacing using predefined values
- Implement responsive layouts with LayoutBuilder or MediaQuery
- Support different screen orientations

## Shared Widgets
- Create reusable core widgets in `lib/shared/widgets/`
- Implement widgets that follow app-wide design system
- Document widget properties and intended usage
- Use composition for complex widgets
- Support theming and light/dark mode



=================================
4. flutter-feature-rules
---
description: 
globs: 
alwaysApply: true
---
---
description: Enforces clean architecture, BLoC pattern, and state management principles within Flutter feature modules.
globs: lib/features/**/*.*
---
- Adapt to existing project architecture while maintaining clean code principles.
- Use Flutter 3.x features and Material 3 design.
- Implement clean architecture with layers.
- Follow proper state management principles.
- Use proper dependency injection.
- Implement proper error handling.

# Feature Module Guidelines

## Clean Architecture
- Organize each feature into distinct layers:
  - **Presentation**: UI components, pages, widgets, and BLoCs
  - **Domain**: Use cases, entities, and repository interfaces
  - **Data**: Repository implementations
- Maintain unidirectional dependency flow: Presentation → Domain ← Data
- Use dependency injection to provide implementations to the domain layer
- Example structure:
  ```
  lib/features/auth/
    ├── presentation/
    │   ├── pages/
    │   ├── widgets/
    │   └── bloc/
    ├── domain/
    │   ├── entities/
    │   ├── repositories/
    │   └── usecases/
    └── data/
        ├── repositories/
        └── models/
  ```

## Presentation Layer
- Separate widgets into pages (screens) and reusable components
- Keep pages focused on layout and composition
- Extract complex widget trees into smaller, focused widgets
- Use screen-specific BLoCs for state management
- Implement proper error handling and loading states
- Example:
  ```dart
  class LoginPage extends StatelessWidget {
    const LoginPage({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: const LoginView(),
      );
    }
  }
  
  class LoginView extends StatelessWidget {
    const LoginView({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          // Handle navigation, errors, etc.
        },
        builder: (context, state) {
          return Scaffold(
            // UI components
          );
        },
      );
    }
  }
  ```

## Domain Layer
- Create pure entity classes representing business objects
- Define repository interfaces with clear method signatures
- Implement use cases for each distinct business operation
- Keep business logic independent of UI and external dependencies
- Use Either<Failure, Success> for error handling
- **Important**: For public Freezed classes (especially entities and failure types) that will be used in switch case pattern matching across multiple files, do NOT use underscore prefix in constructor names to ensure public accessibility
- Example:
  ```dart
  // Entity
  @freezed
  abstract class User with _$User {
    const factory User({
      required String id,
      required String email,
      required String name,
    }) = _User;
  }
  
  // Repository interface
  abstract class AuthRepository {
    Future<Either<AuthFailure, User>> signIn(String email, String password);
    Future<Either<AuthFailure, Unit>> signOut();
  }
  
  // Use case
  @injectable
  class SignInUseCase {
    final AuthRepository repository;
    
    SignInUseCase(this.repository);
    
    Future<Either<AuthFailure, User>> execute(String email, String password) {
      return repository.signIn(email, password);
    }
  }
  
  // Failure classes for switch pattern matching
  @freezed
  sealed class AuthFailure with _$AuthFailure {
    const factory AuthFailure.invalidCredentials() = InvalidCredentials; // Good: No underscore for public use
    const factory AuthFailure.networkError(String message) = NetworkError;
    const factory AuthFailure.serverError(String message) = ServerError;
  }
  ```

## Data Layer
- Implement repository interfaces defined in the domain layer
- Create data source classes for different data providers (API, database)
- Map between DTO models and domain entities
- Handle exceptions and transform them into domain failures
- Example:
  ```dart
  @Injectable(as: AuthRepository)
  class AuthRepositoryImpl implements AuthRepository {
    final AuthRemoteDataSource remoteDataSource;
    
    AuthRepositoryImpl(this.remoteDataSource);
    
    @override
    Future<Either<AuthFailure, User>> signIn(String email, String password) async {
      try {
        final userDto = await remoteDataSource.signIn(email, password);
        return Right(userDto.toDomain());
      } on ServerException catch (e) {
        return Left(AuthFailure.serverError(e.message));
      } catch (e) {
        return Left(const AuthFailure.unexpected());
      }
    }
    
    // Other methods
  }
  ```

## Navigation
- Use route constants for navigation
- Navigate through the router service or context extensions
- Pass minimal data through routes (IDs, not entire objects)
- Handle deep links within each feature

## Dependency Injection
- Register feature-specific classes in a dedicated module

> Note: For BLoC pattern implementation details, see flutter-state-management

===============================
5. flutter-general-best-practice
---
description: 
globs: 
alwaysApply: true
---
---
description: Applies general Flutter best practices across the entire project, focusing on architecture, design, and code quality.
globs: lib/**/*.*
---
# Flutter General Best Practices

## Architecture
- Follow a feature-first architecture
- Apply clean architecture principles with clear separation of concerns
- Use BLoC for state management
- Keep presentation, domain, and data layers separate
- Implement repository pattern for data access
- Use dependency injection for loose coupling

## Code Quality
- Write self-documenting code with clear naming
- Create small, focused classes and functions
- Apply SOLID principles
- Use static analysis tools (lint, analyzer)
- Keep methods under 30 lines when possible
- Follow consistent code style throughout the project
- Avoid deep nesting of widgets or code blocks
- Example linter rules:
  ```yaml
  linter:
    rules:
      - avoid_print
      - avoid_empty_else
      - avoid_relative_lib_imports
      - prefer_const_constructors
      - prefer_final_fields
      - sort_child_properties_last
      - unawaited_futures
  ```

## Accessibility
- Support screen readers with semantics
- Ensure proper text scaling for different font sizes
- Use sufficient color contrast (WCAG AA level)
- Make tap targets at least 48x48 logical pixels
- Provide alternative text for images
- Support keyboard navigation where appropriate
- Test with accessibility tools
- Example:
  ```dart
  Semantics(
    label: 'Submit button',
    hint: 'Submits the form',
    button: true,
    child: ElevatedButton(
      onPressed: () => _submitForm(),
      child: const Text('Submit'),
    ),
  )
  ```

## Responsive Design
- Use flutter_screenutil for responsive dimensions
- Design for different screen sizes and orientations
- Use flexible and expanded widgets for adaptable layouts
- Implement different layouts for phone and tablet
- Test on various device sizes
- Use MediaQuery intelligently
- Example:
  ```dart
  LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return WideLayout(data: data);
      } else {
        return NarrowLayout(data: data);
      }
    },
  )
  ```

## Error Handling
- Implement global error handling and crash reporting
- Use Either<Failure, Success> pattern for domain errors
- Create specific, descriptive error messages
- Gracefully handle network and server errors
- Implement retry mechanisms where appropriate
- Provide user feedback for errors
- Log errors for debugging and monitoring
- Example:
  ```dart
  try {
    final result = await repository.fetchData();
    return result.match(
      (failure) => Left(failure),
      (data) => Right(data),
    );
  } catch (e, stackTrace) {
    logger.error('Unexpected error', e, stackTrace);
    return const Left(Failure.unexpected());
  }
  ```

## Asset Management
- Organize assets by type and feature
- Use appropriate image formats and resolutions
- Optimize asset sizes for production
- Follow proper asset declaration in pubspec.yaml
- Use const asset paths
- Consider vector graphics for UI elements
- Example:
  ```yaml
  flutter:
    assets:
      - assets/images/
      - assets/icons/
      - assets/fonts/
  ```

## Internationalization
- Store localized texts in ARB files in `lib/shared/i18n/arb/`
- Use Flutter's intl package for localization
- Avoid hardcoded strings in the UI
- Support right-to-left languages
- Format dates, numbers, and currencies according to locale
- Example:
  ```dart
  Text(AppLocalizations.of(context)!.welcomeMessage)
  ```

## Security
- Securely store sensitive data (using flutter_secure_storage)
- Implement proper authentication and authorization
- Validate all user inputs
- Secure API communications with HTTPS
- Implement certificate pinning for critical APIs
- Obfuscate code in release builds

> Note: For Performance optimizations, see flutter-performance-rules
> For State Management details, see flutter-state-management
> For Project Structure, see flutter-structure-rules


======================
6. flutter-performance-rules.mdc
---
description: 
globs: 
alwaysApply: true
---
---
description: Provides performance-related guidelines for Flutter development, including image caching, list view optimization, and memory management.
globs: lib/**/*.*
---
- Use proper image caching with CachedImageNetwork
- Implement proper list view optimization.
- Use proper build methods optimization.
- Follow proper state management patterns.
- Implement proper memory management.
- Use proper platform channels when needed.
- Follow proper compilation optimization techniques.

# Flutter Performance Guidelines

## Image Optimization
- Use CachedNetworkImage for network images to prevent redownloading
- Properly size images before display to reduce memory usage
- Use appropriate image formats (WebP, PNG with transparency, JPEG for photos)
- Compress images to reduce app size
- Consider using SVGs for simple graphics and icons
- Implement proper error placeholders and loading indicators
- Example:
  ```dart
  CachedNetworkImage(
    imageUrl: 'https://example.com/image.jpg',
    placeholder: (context, url) => Center(child: CircularProgressIndicator()),
    errorWidget: (context, url, error) => Icon(Icons.error),
    fit: BoxFit.cover,
    memCacheWidth: 500, // Resize in memory
    memCacheHeight: 350,
  )
  ```

## List View Optimization
- Use ListView.builder or GridView.builder for dynamic lists
- Implement pagination for large data sets
- Use IndexedStack for preserving state in tab views
- Avoid rebuilding the entire list when only items change
- Implement proper list item recycling
- Use const widgets when possible in list items
- Consider using a sliver-based list for complex scrolling effects
- Example:
  ```dart
  ListView.builder(
    itemCount: items.length,
    itemExtent: 100, // Fixed height improves performance
    cacheExtent: 500, // Cache more items for smoother scrolling
    itemBuilder: (context, index) {
      final item = items[index];
      return ListItem(
        key: ValueKey(item.id), // Helps Flutter recycle widgets
        item: item,
      );
    },
  )
  ```

## Build Method Optimization
- Keep build methods lightweight and focused
- Extract complex widget subtrees into separate widget classes
- Use const constructors for unchanging widgets
- Minimize setState calls and scope them narrowly
- Use RepaintBoundary for complex animations
- Avoid expensive operations in build methods
- Use builders for conditionally constructing widgets

## State Management Optimization
- Use selective rebuilds with BlocSelector or select methods
- Keep state models immutable and lightweight
- Use freezed for efficient equality comparisons
- Avoid unnecessary state updates
- Consider using value notifiers for simple state
- Only store necessary data in state
- Example:
  ```dart
  BlocSelector<UserBloc, UserState, String>(
    selector: (state) => state.username, // Only rebuilds when username changes
    builder: (context, username) {
      return Text('Hello, $username');
    },
  )
  ```

## Memory Management
- Dispose controllers, animations, and streams properly
- Use weak references for observer patterns when appropriate
- Implement pagination and virtualization for large data sets
- Avoid memory leaks by cancelling subscriptions
- Use const constructors to reduce object allocation
- Properly close resources in dispose methods
- Monitor memory usage during development
- Example:
  ```dart
  class MyWidget extends StatefulWidget {
    // Implementation
    
    @override
    void dispose() {
      _controller.dispose();
      _subscription.cancel();
      _focusNode.dispose();
      super.dispose();
    }
  }
  ```

## Rendering Optimization
- Use RepaintBoundary to isolate repainting widgets
- Avoid repainting large areas when only small parts change
- Optimize shader compilation with shader warming
- Use simple shapes and effects when possible
- Minimize overlay complexity
- Avoid excessive box shadows and blurs
- Example:
  ```dart
  RepaintBoundary(
    child: CustomPaint(
      painter: MyComplexPainter(),
    ),
  )
  ```

## Animation Performance
- Use AnimatedBuilder with focused rebuilds
- Implement custom tickers for fine-grained control
- Use simpler animations for better performance
- Consider using Hero widgets for shared element transitions
- Avoid animating properties that trigger layout changes
- Use explicit animations rather than implicit when possible
- Example:
  ```dart
  AnimatedBuilder(
    animation: _controller,
    // Only rebuild the part that's actually animating
    builder: (context, child) {
      return Transform.scale(
        scale: _scaleAnimation.value,
        child: child, // Child isn't rebuilt on each animation frame
      );
    },
    child: const MyWidget(), // This part isn't rebuilt
  )
  ```

## Asset Loading and Initialization
- Implement proper splash screens to mask loading time
- Defer non-critical initialization
- Use precacheImage for critical images
- Initialize expensive services lazily
- Consider using compute for heavy parsing operations
- Use asynchronous initialization when possible
- Example:
  ```dart
  Future<void> precacheAssets(BuildContext context) async {
    await precacheImage(AssetImage('assets/images/logo.png'), context);
    await rootBundle.load('assets/data/initial_data.json');
  }
  ```

==============================
7. flutter-presentation-rules.mdc
---
description: 
globs: 
alwaysApply: true
---
---
description: Focuses on UI-related rules within Flutter feature's presentation layer, including BLoC, pages, and widgets.
globs: lib/features/**/presentation/**/*.*
---
- Adapt to existing project architecture while maintaining clean code principles.
- Use Flutter 3.x features and Material 3 design.
- Follow proper widget composition.
- Keep widgets small and focused.
- Implement proper routing using GoRouter.
- Use proper form validation.
- Implement proper error boundaries.
- Follow proper accessibility guidelines.
- Make sure to check if the widget already exists in the project (lib/shared/widgets/) to avoid duplication

# Presentation Layer Guidelines

## UI Architecture
- Separate UI into reusable components and pages
- Keep widget hierarchy shallow when possible
- Extract complex UI sections into dedicated widgets
- Follow Material Design 3 guidelines
- **Important**: For Freezed classes (especially BLoC states/events) that will be used in switch case pattern matching across multiple files, do NOT use underscore prefix in constructor names to ensure public accessibility
- Structure the presentation layer as:
  ```
  lib/features/feature_name/presentation/
    ├── pages/             # Full screens
    ├── widgets/           # Feature-specific components
    └── bloc/              # State management
        ├── bloc.dart
        ├── event.dart
        └── state.dart
  ```

## Pages
- Keep page widgets as composition roots
- Extract business logic to BLoC
- Use BlocProvider to create BLoC instances
- Separate the container component from the presentational component
- Handle navigation, errors, and success responses in BlocListener
- Implement proper loading and error states
- Example:
  ```dart
  class ProductDetailPage extends StatelessWidget {
    final String productId;
    
    const ProductDetailPage({Key? key, required this.productId}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return BlocProvider(
        create: (context) => getIt<ProductDetailBloc>()
          ..add(ProductDetailEvent.loaded(productId)),
        child: const ProductDetailView(),
      );
    }
  }
  
  class ProductDetailView extends StatelessWidget {
    const ProductDetailView({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return BlocConsumer<ProductDetailBloc, ProductDetailState>(
        listener: (context, state) {
          // Handle navigation, errors, etc.
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(state.product?.name ?? 'Product Detail')),
            body: switch (state) {
              ProductDetailInitial() => const SizedBox(),
              ProductDetailLoading() => const Center(child: CircularProgressIndicator()),
              ProductDetailLoaded(:final product) => ProductContent(product: product),
              ProductDetailError(:final message) => ErrorView(message: message),
            },
          );
        },
      );
    }
  }
  ```

## Widgets
- Create focused, reusable widgets
- Implement const constructors when possible
- Check if a similar widget already exists in `lib/shared/widgets/`
- Keep stateful widgets for local UI state only
- Separate widgets into logical folders
- Implement proper error handling
- Example:
  ```dart
  class ProductCard extends StatelessWidget {
    final Product product;
    final VoidCallback? onTap;
    
    const ProductCard({
      Key? key,
      required this.product,
      this.onTap,
    }) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return Card(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductImage(imageUrl: product.imageUrl),
                const SizedBox(height: 8),
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
  ```

## Form Handling
- Use Formz for form validation
- Create input models for form fields
- Validate inputs in the BLoC
- Show validation errors on submit or unfocus
- Disable submission during loading
- Use proper keyboard types for inputs

> Note: For BLoC pattern implementation details, see flutter-state-management

## Routing
- Use GoRouter for navigation
- Prefer `context.push()` over `context.go()` for stack-based navigation
- Use `context.pop()` to navigate back
- Pass minimal data through routes (IDs, not entire objects)
- Implement proper route guards
- Example:
  ```dart
  GoRoute(
    path: '/products/:id',
    builder: (context, state) {
      final productId = state.pathParameters['id']!;
      return ProductDetailPage(productId: productId);
    },
  )
  
  // Navigation
  context.push('/products/${product.id}');
  ```

## Error Boundaries
- Implement error boundaries for critical UI sections
- Display user-friendly error messages
- Provide retry options when appropriate
- Log errors for debugging
- Example:
  ```dart
  class ErrorBoundary extends StatefulWidget {
    final Widget child;
    final Widget Function(BuildContext context, Object error)? errorBuilder;
    
    const ErrorBoundary({
      Key? key,
      required this.child,
      this.errorBuilder,
    }) : super(key: key);
    
    @override
    State<ErrorBoundary> createState() => _ErrorBoundaryState();
  }
  
  class _ErrorBoundaryState extends State<ErrorBoundary> {
    Object? _error;
    
    @override
    Widget build(BuildContext context) {
      if (_error != null) {
        return widget.errorBuilder?.call(context, _error!) ??
            Center(
              child: Text('Something went wrong'),
            );
      }
      
      return ErrorWidget.builder = (details) {
        setState(() => _error = details.exception);
        return SizedBox.shrink();
      };
    }
  }
  ```

## Responsive Design
- Use LayoutBuilder or MediaQuery for responsive layouts
- Create responsive layouts for different screen sizes
- Use Flexible and Expanded widgets for adaptable layouts
- Test on various device sizes
- Example:
  ```dart
  LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return _buildTabletLayout();
      } else {
        return _buildMobileLayout();
      }
    },
  )
  ```

## Loading States
- Implement consistent loading indicators
- Use skeleton screens for content loading
- Avoid UI jumps during loading
- Maintain state during reloads
- Show loading indicators only for operations that take time
- Example:
  ```dart
  BlocBuilder<ProductsBloc, ProductsState>(
    builder: (context, state) {
      if (state.isLoading && state.products.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }
      
      if (state.errorMessage != null && state.products.isEmpty) {
        return ErrorView(
          message: state.errorMessage!,
          onRetry: () => context.read<ProductsBloc>().add(
            const ProductsEvent.loadProducts(),
          ),
        );
      }
      
      return ListView.builder(
        itemCount: state.products.length,
        itemBuilder: (context, index) => ProductCard(
          product: state.products[index],
        ),
      );
    },
  )
  ```

==========================
8. flutter-state-management.mdc
---
description: 
globs: 
alwaysApply: true
---
# BLoC State Management Guidelines

## Core Principles
- Use BLoC pattern (version 9.x.x) for state management
- Use `freezed` v3+ for event and state classes to ensure immutability
- Use `injectable` for dependency injection
- Separate BLoCs by feature and function
- Follow unidirectional data flow: Events in, States out
- Event and State files must be part of Bloc file

## Dependencies
```yaml
dependencies:
  flutter_bloc: ^9.0.0
  freezed_annotation: ^2.4.1
  injectable: ^2.3.2

dev_dependencies:
  freezed: ^2.4.5
  build_runner: ^2.4.6
  injectable_generator: ^2.4.1
```

## BLoC Structure
```dart
part of 'counter_bloc.dart';

// Event class with freezed v3 syntax
// Important: No underscore prefix for public events used in switch case pattern matching
@freezed
sealed class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = Increment; // Good: No underscore
  const factory CounterEvent.decrement() = Decrement;
  const factory CounterEvent.reset() = Reset;
}

// ==============================

part of 'counter_bloc.dart';

// State class with freezed v3 syntax
// Important: No underscore prefix for public states used in switch case pattern matching
@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    required int count,
    required bool isLoading,
  }) = _CounterState; // Private state implementation can keep underscore
}

// ==============================
part 'counter_event.dart';
part 'counter_state.dart';

// BLoC class with injectable
@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(count: 0, isLoading: false)) {
    on<CounterEvent>((event, emit) {
      switch (event) {
        case Increment(): // No underscore needed for pattern matching
          emit(state.copyWith(count: state.count + 1));
        case Decrement():
          emit(state.copyWith(count: state.count - 1));
        case Reset():
          emit(state.copyWith(count: 0));
      }
    });
  }
}
```

## Best Practices
- Keep BLoCs focused on a single responsibility
- Use repositories for data access, injected into BLoCs
- Handle errors within the BLoC and emit appropriate states
- Use BlocProvider for providing BLoCs to the widget tree
- Use BlocBuilder, BlocListener, or BlocConsumer for UI updates
- Test BLoCs thoroughly with bloc_test package
- Use switch pattern matching for handling events and states instead of .map/.when

## BLoC Usage in UI
```dart
// Providing a BLoC
BlocProvider(
  create: (context) => getIt<AuthBloc>(),
  child: const LoginPage(),
)

// Using BlocBuilder for UI updates with switch pattern matching
BlocBuilder<AuthBloc, AuthState>(
  buildWhen: (previous, current) => previous.status != current.status,
  builder: (context, state) {
    return switch (state.status) {
      AuthStatusLoading() => const CircularProgressIndicator(),
      AuthStatusAuthenticated() => const Dashboard(),
      AuthStatusError(:final message) => ErrorMessage(message: message),
      _ => const LoginForm(),
    };
  },
)

// Using BlocListener for side effects with switch pattern matching
BlocListener<AuthBloc, AuthState>(
  listenWhen: (previous, current) => 
    previous.status != current.status,
  listener: (context, state) {
    switch (state.status) {
      case AuthStatusAuthenticated():
        context.push(AppRoutes.home);
      case AuthStatusError(:final message):
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      default:
        break;
    }
  },
  child: const LoginPage(),
)
```

===================================
9. flutter-structure.rules.mdc
---
description: 
globs: 
alwaysApply: true
---
---
description: Applies Flutter project structure for the whole project
globs: lib/**/*.*
---
# Project Structure Guidelines

## Overall Structure
The project follows a feature-first, clean architecture approach with the following main directories:

```
flutter_project/
├── android/               # Android-specific files
├── assets/                # Static assets (images, fonts, etc.)
│   ├── fonts/
│   ├── images/
│   └── icons/
├── ios/                   # iOS-specific files
├── lib/                   # Dart code
│   ├── core/              # Core utilities and services
│   ├── features/          # Feature modules
│   └── shared/            # Shared code across features
├── test/                  # Test files
├── web/                   # Web-specific files
├── pubspec.yaml           # Dependencies and assets
└── README.md              # Project documentation
```

## Lib Directory Structure
The `lib` directory is organized as follows:

```
lib/
├── app.dart               # Root application widget
├── main.dart              # Entry point
├── core/                  # Core utilities and common functionality
│   ├── di/                # Dependency injection setup
│   │   └── get_it.dart
│   ├── extensions/        # Extension methods
│   ├── logger/            # Logging functionality
│   ├── network/           # Network-related utilities
│   │   ├── api_client.dart
│   │   └── interceptors/
│   ├── router/            # Application routing
│   │   └── router.dart
│   ├── theme/             # Theme configuration
│   │   ├── app_theme.dart
│   │   └── colors.dart
│   └── utils/             # Utility functions and helpers
│       ├── constants.dart
│       └── validators.dart
├── features/              # Feature modules
│   ├── auth/              # Authentication feature
│   │   ├── data/          # Data layer
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/        # Domain layer
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/  # Presentation layer
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   ├── home/              # Home feature
│   │   ├── ...
│   └── settings/          # Settings feature
│       ├── ...
└── shared/                # Shared code across features
    ├── blocs/             # Global BLoCs
    ├── data/              # Shared data layer components
    │   ├── api/           # API services
    │   ├── models/        # Data models
    │   │   ├── dtos/      # Data Transfer Objects
    │   │   └── domain/    # Domain models
    │   └── repositories/  # Implementations of repositories
    ├── i18n/              # Internationalization
    │   ├── arb/           # ARB language files
    │   └── generated/     # Generated localization code
    ├── services/          # Application services
    └── widgets/           # Reusable widgets
```

## Core Directory
The `core` directory contains application-wide utilities and services:

- **di/**: Dependency injection configuration
- **extensions/**: Extension methods for built-in types
- **logger/**: Logging functionality
- **network/**: HTTP client, interceptors, and base API configuration
- **router/**: Application routing using GoRouter
- **theme/**: Theme definitions and styling
- **utils/**: Utility classes, helpers, and constants

## Features Directory
Each feature follows a clean architecture approach with three layers:

### Data Layer
- **datasources/**: Remote and local data sources
- **models/**: DTOs and response models
- **repositories/**: Implementations of domain repositories

### Domain Layer
- **entities/**: Business objects
- **repositories/**: Repository interfaces
- **usecases/**: Business logic use cases

### Presentation Layer
- **bloc/**: BLoC state management
- **pages/**: Full screens or pages
- **widgets/**: Feature-specific UI components

## Shared Directory
The `shared` directory contains code that's used across multiple features:

- **blocs/**: Application-wide BLoCs
- **data/**: Shared data models and repositories
- **i18n/**: Internationalization resources
- **services/**: Application services (authentication, analytics, etc.)
- **widgets/**: Reusable UI components

## File Naming Conventions

- Use `snake_case` for file and directory names:
  ```
  user_repository.dart
  auth_bloc.dart
  login_page.dart
  ```

- For BLoC pattern, split the implementation into multiple files:
  ```
  auth_bloc.dart
  auth_event.dart
  auth_state.dart
  ```

- Group related files in appropriate directories rather than using prefixes:
  ```
  // Preferred
  models/
    user_model.dart
    product_model.dart
  
  // Not preferred
  user_model.dart
  product_model.dart
  ```

## Import Organization
Organize imports in the following order:

1. Dart SDK imports
2. Flutter framework imports
3. Third-party package imports
4. Application imports (absolute paths)
5. Relative imports

Example:
```dart
// Dart imports
import 'dart:async';
import 'dart:convert';

// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Third-party imports
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/getIt.dart';

// Application imports
import 'package:my_app/core/utils/constants.dart';
import 'package:my_app/features/auth/domain/entities/user.dart';

// Relative imports
import '../repositories/user_repository.dart';
import './widgets/user_avatar.dart';
```

## Asset Organization

Assets should be organized by type with appropriate subdirectories:

```
assets/
├── fonts/                 # Font files
│   ├── roboto/
│   └── opensans/
├── images/                # Images and photos
│   ├── backgrounds/
│   ├── placeholders/
│   └── illustrations/
├── icons/                 # Icon assets
│   ├── navigation/
│   └── actions/
└── animations/            # Lottie animations
```

Declare assets in `pubspec.yaml` with appropriate patterns:

```yaml
flutter:
  assets:
    - assets/images/
    - assets/icons/
    - assets/animations/
  
  fonts:
    - family: Roboto
      fonts:
        - asset: assets/fonts/roboto/Roboto-Regular.ttf
        - asset: assets/fonts/roboto/Roboto-Bold.ttf
          weight: 700
```

## Application Entry Points

- **main.dart**: The application entry point that initializes dependencies and runs the app
- **app.dart**: The root application widget that sets up the app's theme, routing, and global providers

Example of `main.dart`:
```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await configureDependencies();
  
  runApp(const MyApp());
}
```

Example of `app.dart`:
```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeBloc>()),
        BlocProvider(create: (_) => getIt<AuthBloc>()),
      ],
      child: MaterialApp.router(
        title: 'My App',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: appRouter.router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
```
=========================
10. flutter-testing-rules.mdc
---
description: 
globs: 
alwaysApply: false
---
---
description: Specifies testing guidelines for Flutter projects, covering unit, widget, and integration tests.
globs: test/**/*.*
---
# Testing Guidelines

## General Principles
- Write unit tests for all business logic
- Implement widget tests for complex UI components
- Use integration tests for critical user flows
- Implement proper mocking strategies
- Use proper test coverage tools
- Follow proper test naming conventions
- Implement proper CI/CD testing

## Unit Testing
- Test all business logic, especially in BLoCs and use cases
- Use bloc_test package for testing BLoCs
- Create mocks with mockito or mocktail for dependencies
- Test both success and failure scenarios
- Aim for high test coverage of domain logic
- Use setUp and tearDown for test initialization and cleanup
- Example BLoC test:
  ```dart
  blocTest<LoginBloc, LoginState>(
    'emits [loading, success] when login succeeds',
    build: () => LoginBloc(mockAuthRepository),
    act: (bloc) => bloc.add(const LoginEvent.submitted('email', 'password')),
    setUp: () {
      when(() => mockAuthRepository.login(any(), any()))
          .thenAnswer((_) async => const Right(User()));
    },
    expect: () => [
      LoginState.loading(),
      LoginState.success(const User()),
    ],
  );
  ```

## Widget Testing
- Test complex widget interactions
- Test widget rendering in different states
- Use finders to locate widgets
- Test user interactions (tap, scroll, etc.)
- Mock dependencies using providers
- Example widget test:
  ```dart
  testWidgets('shows error message when login fails', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider(
          create: (_) => mockLoginBloc,
          child: const LoginPage(),
        ),
      ),
    );
    
    // Simulate error state
    whenListen(
      mockLoginBloc,
      Stream.fromIterable([LoginState.error('Invalid credentials')]),
      initialState: LoginState.initial(),
    );
    
    await tester.pump();
    expect(find.text('Invalid credentials'), findsOneWidget);
  });
  ```

## Integration Testing
- Test critical user flows end-to-end
- Use integration_test package
- Test app startup and initialization
- Verify that UI components work together correctly
- Mock external dependencies like network calls
- Example integration test:
  ```dart
  testWidgets('complete login flow works', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    
    // Navigate to login
    await tester.tap(find.byKey(const Key('loginButton')));
    await tester.pumpAndSettle();
    
    // Enter credentials
    await tester.enterText(find.byKey(const Key('emailField')), 'test@example.com');
    await tester.enterText(find.byKey(const Key('passwordField')), 'password123');
    
    // Submit form
    await tester.tap(find.byKey(const Key('submitButton')));
    await tester.pumpAndSettle();
    
    // Verify navigation to home screen
    expect(find.byKey(const Key('homeScreen')), findsOneWidget);
  });
  ```
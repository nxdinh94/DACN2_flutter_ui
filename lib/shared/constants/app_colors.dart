import 'package:flutter/material.dart';

/// App Colors extracted from Figma design
/// Keep in Touch color palette
class AppColors {
  AppColors._();

  // Primary Colors
  /// Primary pink color used for main branding and interactive elements
  /// Used for: buttons, labels, icons, and accent elements
  static const Color primary = Color(0xFFFF5D75);
  
  /// Secondary pink color used for app bar and header sections
  /// Used for: app bar background, header containers
  static const Color secondary = Color(0xFFFF9EAC);
  
  /// Light background pink color for the main screen background
  /// Used for: screen backgrounds, light accent areas
  static const Color backgroundLight = Color(0xFFFFE9EC);

  // Neutral Colors
  /// Pure white color for container backgrounds and surfaces
  /// Used for: cards, containers, input fields, surfaces
  static const Color white = Color(0xFFFFFFFF);
  
  /// Pure black color for primary text and icons
  /// Used for: main text, primary content, dark icons
  static const Color black = Color(0xFF000000);
  
  /// Dark gray color for secondary text content
  /// Used for: secondary text, values, content text
  static const Color darkGray = Color(0xFF121212);
  
  /// Medium gray color for placeholder and description text
  /// Used for: placeholder text, descriptions, hints
  static const Color mediumGray = Color(0xFF808080);
  
  /// Light gray color for borders and dividers
  /// Used for: borders, dividers, separators
  static const Color lightGray = Color(0xFFCFCFCF);

  // Semantic Colors
  /// Error color (using primary as error indicator)
  static const Color error = primary;
  
  /// Success color (using primary as success indicator)
  static const Color success = primary;
  
  /// Warning color (using secondary as warning indicator)
  static const Color warning = secondary;

  // Text Colors
  /// Primary text color for headings and important content
  static const Color textPrimary = black;
  
  /// Secondary text color for less important content
  static const Color textSecondary = darkGray;
  
  /// Tertiary text color for descriptions and placeholders
  static const Color textTertiary = mediumGray;
  
  /// Text color on colored backgrounds (e.g., buttons)
  static const Color textOnPrimary = white;

  // UI Element Colors
  /// Border color for input fields and containers
  static const Color border = lightGray;
  
  /// Background color for input fields and form elements
  static const Color inputBackground = white;
  
  /// Background color for disabled elements
  static const Color disabled = lightGray;
  
  /// Shadow color for elevated elements
  static const Color shadow = Color(0x1A000000); // 10% black opacity

  // Button Colors
  /// Primary button background color
  static const Color buttonPrimary = primary;
  
  /// Primary button text color
  static const Color buttonPrimaryText = white;
  
  /// Secondary button background color
  static const Color buttonSecondary = white;
  
  /// Secondary button text color
  static const Color buttonSecondaryText = primary;
  
  /// Disabled button background color
  static const Color buttonDisabled = lightGray;
  
  /// Disabled button text color
  static const Color buttonDisabledText = mediumGray;

  // App Bar Colors
  /// App bar background color
  static const Color appBarBackground = secondary;
  
  /// App bar text and icon color
  static const Color appBarContent = black;

  // Container Colors
  /// Background color for main content containers
  static const Color containerBackground = white;
  
  /// Background color for the main screen
  static const Color screenBackground = backgroundLight;

  // Icon Colors
  /// Primary icon color for interactive elements
  static const Color iconPrimary = primary;
  
  /// Secondary icon color for less prominent elements
  static const Color iconSecondary = mediumGray;
  
  /// Icon color on colored backgrounds
  static const Color iconOnPrimary = white;
  
  /// Icon color for neutral/inactive states
  static const Color iconNeutral = black;

  // Status Colors (using existing palette)
  /// Color for active/selected states
  static const Color active = primary;
  
  /// Color for inactive/unselected states
  static const Color inactive = mediumGray;
  
  /// Color for hover states
  static const Color hover = secondary;

  // Gradient Colors
  /// Primary gradient colors for special UI elements
  static const List<Color> primaryGradient = [
    primary,
    secondary,
  ];
  
  /// Light gradient for backgrounds
  static const List<Color> backgroundGradient = [
    backgroundLight,
    white,
  ];
}

/// Extension to provide easier access to color constants
extension AppColorsExtension on BuildContext {
  /// Access app colors through context
  /// Usage: context.appColors.primary
  Type get appColors => AppColors;
}

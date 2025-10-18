import 'package:flutter/material.dart';
import 'shared/constants/app_colors.dart';

/// New Contact Schedule Page
/// 
/// This page allows users to create a new contact schedule with
/// contact information, timing, and additional details.
/// 
/// Follows Material Design 3 guidelines and accessibility standards.
class NewContactSchedulePage extends StatelessWidget {
  const NewContactSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _handleCreateSchedule(context),
          backgroundColor: AppColors.buttonPrimary,
          label: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text('Create Schedule'),
          ),
        ),
        body: Column(
          children: [
            const _CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const _ContactInfoSection(),
                    const SizedBox(height: _AppDimensions.sectionSpacing),
                    
                    // Contact Details Form Section
                    const _ContactDetailsForm(),
                    
                    const SizedBox(height: _AppDimensions.buttonTopSpacing),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Handles the create schedule action
  void _handleCreateSchedule(BuildContext context) {
    // TODO: Implement schedule creation logic
    // This should trigger a BLoC event or navigate to the next screen
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Schedule creation functionality coming soon'),
      ),
    );
  }
}

/// Contact details form containing all input fields
class _ContactDetailsForm extends StatelessWidget {
  const _ContactDetailsForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _InfoField(
          label: 'Time',
          value: '2 August 2025 8pm',
          showArrow: true,
          onTap: () {
            // TODO: Handle time selection
          },
        ),
        _InfoField(
          label: 'Phone',
          value: '0287287389',
          onTap: () {
            // TODO: Handle phone editing
          },
        ),
        _InfoField(
          label: 'Email',
          value: 'abc@gmail.com',
          onTap: () {
            // TODO: Handle email editing
          },
        ),
        _InfoField(
          label: 'Address',
          value: 'Thon my thanh trung 2',
          onTap: () {
            // TODO: Handle address editing
          },
        ),
        _InfoField(
          label: 'Event',
          value: 'None',
          showArrow: true,
          isPlaceholder: true,
          onTap: () {
            // TODO: Handle event selection
          },
        ),
        _InfoField(
          label: 'Relationship',
          value: 'None',
          showArrow: true,
          isPlaceholder: true,
          onTap: () {
            // TODO: Handle relationship selection
          },
        ),
        const _AlertSoundField(),
        const _AnyDetailsSection(),
      ],
    );
  }
}

/// Custom app bar with title and close button
class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _AppDimensions.appBarHeight,
      padding: const EdgeInsets.all(_AppDimensions.appBarPadding),
      decoration: const BoxDecoration(
        color: AppColors.appBarBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_AppDimensions.borderRadius),
          topRight: Radius.circular(_AppDimensions.borderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New contact schedule', // TODO: Move to localization
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.appBarContent,
              fontWeight: FontWeight.w700,
            ),
          ),
          Semantics(
            label: 'Close new contact schedule',
            button: true,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                width: _AppDimensions.iconSize,
                height: _AppDimensions.iconSize,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.close,
                  color: AppColors.appBarContent,
                  size: _AppDimensions.smallIconSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Contact information section with profile picture and details
class _ContactInfoSection extends StatelessWidget {
  const _ContactInfoSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _AppDimensions.contactSectionHeight,
      decoration: const BoxDecoration(
        color: AppColors.containerBackground,
        border: Border(
          bottom: BorderSide(
            color: AppColors.border,
            width: _AppDimensions.borderWidth,
          ),
        ),
      ),
      child: Stack(
        children: [
          // Profile Picture
          Positioned(
            left: _AppDimensions.profileImageLeft,
            top: _AppDimensions.profileImageTop,
            child: Semantics(
              label: 'Contact profile picture',
              image: true,
              child: Container(
                width: _AppDimensions.profileImageSize,
                height: _AppDimensions.profileImageSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.disabled,
                ),
                child: const Icon(
                  Icons.person,
                  size: _AppDimensions.profileIconSize,
                  color: AppColors.iconSecondary,
                ),
              ),
            ),
          ),
          // Divider Line
          Positioned(
            left: _AppDimensions.dividerLeft,
            top: _AppDimensions.dividerTop,
            child: Container(
              width: _AppDimensions.dividerWidth,
              height: _AppDimensions.borderWidth,
              color: AppColors.border,
            ),
          ),
          // Contact Name
          Positioned(
            left: _AppDimensions.textLeft,
            top: _AppDimensions.nameTop,
            child: Text(
              'Xander Dson', // TODO: Move to localization
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
          // Contact Description
          Positioned(
            left: _AppDimensions.textLeft,
            top: _AppDimensions.descriptionTop,
            child: Text(
              'Some description about them.', // TODO: Move to localization
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.textTertiary,
                fontSize: _AppDimensions.smallFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Reusable info field widget for contact details
class _InfoField extends StatelessWidget {
  const _InfoField({
    required this.label,
    required this.value,
    this.showArrow = false,
    this.isPlaceholder = false,
    this.onTap,
  });

  final String label;
  final String value;
  final bool showArrow;
  final bool isPlaceholder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$label: $value',
      button: onTap != null,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(_AppDimensions.fieldPadding),
          decoration: const BoxDecoration(
            color: AppColors.containerBackground,
            border: Border(
              bottom: BorderSide(
                color: AppColors.border,
                width: _AppDimensions.borderWidth,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.iconPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: _AppDimensions.fieldSpacing),
              Expanded(
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: isPlaceholder 
                        ? AppColors.textSecondary 
                        : AppColors.textPrimary,
                  ),
                ),
              ),
              if (showArrow)
                Container(
                  width: _AppDimensions.arrowSize,
                  height: _AppDimensions.arrowSize,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.keyboard_arrow_up,
                    color: AppColors.iconPrimary,
                    size: _AppDimensions.arrowIconSize,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Alert sound selection field
class _AlertSoundField extends StatelessWidget {
  const _AlertSoundField();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Alert sounds: Default',
      button: true,
      child: GestureDetector(
        onTap: () {
          // TODO: Handle alert sound selection
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(_AppDimensions.fieldPadding),
          decoration: const BoxDecoration(
            color: AppColors.containerBackground,
            border: Border(
              bottom: BorderSide(
                color: AppColors.border,
                width: _AppDimensions.borderWidth,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Alert sounds', // TODO: Move to localization
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.iconPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: _AppDimensions.fieldSpacing),
              Expanded(
                child: Text(
                  'Default', // TODO: Move to localization
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              Container(
                width: _AppDimensions.arrowSize,
                height: _AppDimensions.arrowSize,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.volume_up,
                  color: AppColors.iconPrimary,
                  size: _AppDimensions.arrowIconSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Section for additional details input
class _AnyDetailsSection extends StatelessWidget {
  const _AnyDetailsSection();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Additional details section',
      textField: true,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(_AppDimensions.fieldPadding),
        decoration: const BoxDecoration(
          color: AppColors.containerBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Any details', // TODO: Move to localization
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.iconPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: _AppDimensions.fieldSpacing),
            Text(
              'Ex: About the purpose, something you intend to talk,..', // TODO: Move to localization
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.textTertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Create schedule button
class CreateScheduleButton extends StatelessWidget {
  const CreateScheduleButton({super.key, 
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Create schedule',
      button: true,
      hint: 'Tap to create a new contact schedule',
      child: SizedBox(
        width: _AppDimensions.buttonWidth,
        height: _AppDimensions.buttonHeight,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonPrimary,
            foregroundColor: AppColors.buttonPrimaryText,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_AppDimensions.borderRadius),
            ),
            elevation: 0,
          ),
          child: Text(
            'Create schedule', // TODO: Move to localization
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.buttonPrimaryText,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

/// App-specific dimensions and constants
class _AppDimensions {
  _AppDimensions._();

  // Layout dimensions
  static const double sectionSpacing = 16.0;
  static const double buttonTopSpacing = 70.0;
  static const double fieldPadding = 12.0;
  static const double fieldSpacing = 12.0;
  static const double borderRadius = 8.0;
  static const double borderWidth = 0.25;

  // App bar dimensions
  static const double appBarHeight = 48.0;
  static const double appBarPadding = 12.0;

  // Contact section dimensions
  static const double contactSectionHeight = 80.0;
  static const double profileImageSize = 56.0;
  static const double profileImageLeft = 12.0;
  static const double profileImageTop = 12.0;
  static const double dividerLeft = 80.0;
  static const double dividerTop = 40.0;
  static const double dividerWidth = 277.0;
  static const double textLeft = 80.0;
  static const double nameTop = 19.0;
  static const double descriptionTop = 46.0;

  // Icon dimensions
  static const double iconSize = 24.0;
  static const double smallIconSize = 16.0;
  static const double profileIconSize = 32.0;
  static const double arrowSize = 20.0;
  static const double arrowIconSize = 16.0;

  // Button dimensions
  static const double buttonWidth = 366.0;
  static const double buttonHeight = 48.0;

  // Font sizes
  static const double smallFontSize = 14.0;
}

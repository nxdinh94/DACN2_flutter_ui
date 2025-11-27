import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:kit/features/settings/presentation/widgets/settings_header.dart';
import 'package:kit/features/settings/presentation/widgets/settings_list_tile.dart';
import 'package:kit/features/settings/presentation/widgets/settings_section.dart';
import 'package:kit/shared/widgets/app_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const ProfileEvents.getProfile());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme.surfaceColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: context.appTheme.surfaceColor,
            title: Text(
              'Settings',
              style: context.textStyle.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 16),
                // User Profile Header
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    final result = state.mapOrNull(
                      loaded: (value) => value,
                    );
                    return SettingsHeader(
                        avatarUrl: result?.userInfo.avatar ??
                            'https://www.shutterstock.com/image-vector/default-avatar-profile-icon-vector-600nw-1745180411.jpg',
                        name: result?.userInfo.fullName ?? '',
                        username: '@${result?.userInfo.username ?? ''}',
                        onTap: () => context.push(AppRoutes.profile),
                      );
                  },
                ),
                const SizedBox(height: 12),
                
                // Account Section
                SettingsSection(
                  title: 'Account',
                  children: [
                    SettingsListTile(
                      icon: Icons.person_outline,
                      title: 'Account Information',
                      onTap: () {
                        // Navigate to account info
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.security_outlined,
                      title: 'Security and account access',
                      onTap: () {
                        // Navigate to security settings
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.monetization_on_outlined,
                      title: 'Monetization',
                      onTap: () {
                        // Navigate to monetization
                      },
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                // Privacy and Safety
                SettingsSection(
                  title: 'Privacy and Safety',
                  children: [
                    SettingsListTile(
                      icon: Icons.lock_outline,
                      title: 'Privacy and safety',
                      onTap: () {
                        // Navigate to privacy settings
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.notifications_outlined,
                      title: 'Notifications',
                      onTap: () {
                        // Navigate to notifications
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.block_outlined,
                      title: 'Blocked accounts',
                      onTap: () {
                        // Navigate to blocked accounts
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.volume_off_outlined,
                      title: 'Muted accounts',
                      onTap: () {
                        // Navigate to muted accounts
                      },
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                // General Section
                SettingsSection(
                  title: 'General',
                  children: [
                    SettingsListTile(
                      icon: Icons.language_outlined,
                      title: 'Language',
                      trailing: Text(
                        'English',
                        style: context.textStyle.bodyMedium?.copyWith(
                          color: context.appTheme.textSubtle,
                        ),
                      ),
                      onTap: () {
                        // Navigate to language settings
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.accessibility_outlined,
                      title: 'Accessibility, display and languages',
                      onTap: () {
                        // Navigate to accessibility
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.data_usage_outlined,
                      title: 'Data usage',
                      onTap: () {
                        // Navigate to data usage
                      },
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                // About Section
                SettingsSection(
                  title: 'About',
                  children: [
                    SettingsListTile(
                      icon: Icons.help_outline,
                      title: 'Help Center',
                      onTap: () {
                        // Navigate to help center
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.description_outlined,
                      title: 'Terms of Service',
                      onTap: () {
                        // Navigate to terms
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.privacy_tip_outlined,
                      title: 'Privacy Policy',
                      onTap: () {
                        // Navigate to privacy policy
                      },
                    ),
                    SettingsListTile(
                      icon: Icons.info_outline,
                      title: 'About',
                      trailing: Text(
                        'Version 1.0.0',
                        style: context.textStyle.bodyMedium?.copyWith(
                          color: context.appTheme.textSubtle,
                        ),
                      ),
                      onTap: () {
                        // Show about dialog
                      },
                    ),
                  ],
                ),
                
                const SizedBox(height: 24),
                
                // Logout Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: AppButton.outlined(
                      onPressed: () => _showLogoutDialog(context),
                      text: 'Log out',
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: context.appTheme.surfaceColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            'Log out?',
            style: context.textStyle.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'You can always log back in at any time.',
            style: context.textStyle.bodyMedium?.copyWith(
              color: context.appTheme.textSubtle,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: Text(
                'Cancel',
                style: context.textStyle.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                context.read<AuthBloc>().add(LogoutRequested());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: context.appTheme.errorColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(
                'Log out',
                style: context.textStyle.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

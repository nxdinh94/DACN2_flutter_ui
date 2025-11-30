import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/extensions/date_extension.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/features/profile/data_source/model/update_profile_request.dart';
import 'package:kit/features/profile/data_source/repository/user_info_entity.dart';
import 'package:kit/features/profile/presentation/bloc/profile_bloc/profile_bloc.dart';
import 'package:kit/features/profile/presentation/screens/book_marked_tab.dart';
import 'package:kit/features/profile/presentation/widgets/posts_tab.dart';
import 'package:kit/shared/widgets/app_bottom_sheet.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/app_textfield.dart';
import 'package:kit/shared/widgets/network_image.dart';
import 'package:kit/shared/widgets/toast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: BlocConsumer<ProfileBloc, ProfileState>(
          builder: (BuildContext context, state) {
            final data = state.mapOrNull(
              loaded: (value) => value.userInfo,
            );
            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                _buildProfileAppBar(context, innerBoxIsScrolled, data),
                _buildProfileInfo(context, data),
              ],
              body: const TabBarView(
                children: [
                  PostsTab(),
                  RepliesTab(),
                  MediaTab(),
                  LikesTab(),
                  BookMarkedTab(),
                ],
              ),
            );
          },
          listener: (BuildContext context, state) { 
            if (state is ProfileError) {
              showToast(state.message);
            }
          },
        ),
      ),
    );
  }

  SliverAppBar _buildProfileAppBar(BuildContext context, bool innerBoxIsScrolled, UserInfoEntity ? userInfo) {

    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: 100,
      backgroundColor: context.appTheme.surfaceColor,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate scroll progress
          // When fully expanded: constraints.maxHeight = 200 + kToolbarHeight (256)
          // When collapsed: constraints.maxHeight = kToolbarHeight (56)
          final scrollProgress = (constraints.maxHeight - kToolbarHeight) / 200;
          // Show title when scroll progress is less than 0.14 (avatar area is scrolled)
          final showTitle = scrollProgress < 0.14;
          return Stack(
            fit: StackFit.expand,
            children: [
              // FlexibleSpaceBar for background
              FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Banner
                    AppNetworkImage.post(
                      imageUrl: userInfo?.cover ?? 'https://www.shutterstock.com/image-vector/default-avatar-profile-icon-vector-600nw-1745180411.jpg',
                      height: 100,
                    ),
                    // Gradient overlay
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [Colors.black54, Colors.transparent],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Title that appears when avatar is hidden
              if (showTitle)
                Positioned(
                  left: 56, 
                  right: 56, 
                  bottom: 16,
                  child: Opacity(
                    opacity: (1 - scrollProgress * 2).clamp(0.0, 1.0),
                    child: Text(
                      userInfo?.fullName ?? 'Unknown',
                      style: context.textStyle.titleSmall
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildProfileInfo(BuildContext context, UserInfoEntity? userInfo) {
    return SliverToBoxAdapter(
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          final userInfo = state.mapOrNull(
            loaded: (value) => value.userInfo,
          );
          if (state is ProfileLoading) {
            return const Center(child: CircularProgressIndicator());
          }
  
          return Container(
            color: context.appTheme.surfaceColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Avatar and Follow button row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatar with negative margin to overlap banner
                      AppNetworkImage.avatar(
                        imageUrl: userInfo != null && userInfo.avatar != null 
                          ? userInfo.avatar : 'https://www.shutterstock.com/image-vector/default-avatar-profile-icon-vector-600nw-1745180411.jpg',
                        size: 80,
                      ),
                      // Edit Profile button
                      AppButton.outlined(
                        onPressed: () => showAppBottomSheet(
                          child: EditProfileBottomSheet(),
                          context: context,
                          initialExpand: 0.95,
                          maxExpand: 0.95
                        ),
                        text: 'Edit profile',
                        textColor: context.appTheme.onSurfaceColor,
                        borderColor: context.appTheme.borderColor,
                        fontSize: 14,
                        padding: EdgeInsetsGeometry.symmetric(vertical: 6, horizontal: 12),
                      ),
                    ],
                  ),
                ),
                // User info
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userInfo != null
                          ? userInfo.fullName : 'Unknown',
                        style: context.textStyle.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '@${userInfo != null ? userInfo.username : 'Unknown'}',
                        style: context.textStyle.bodyMedium?.copyWith(
                          color: context.appTheme.textSubtle,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        userInfo != null && userInfo.bio != null
                          ? userInfo.bio! : 'No bio available.',
                        style: context.textStyle.bodyMedium,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            '159M ',
                            style: context.textStyle.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: context.textStyle.bodyMedium?.copyWith(
                              color: context.appTheme.textSubtle,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '268 ',
                            style: context.textStyle.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Following',
                            style: context.textStyle.bodyMedium?.copyWith(
                              color: context.appTheme.textSubtle,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                // Tabs
                TabBar(
                  indicatorColor: context.appTheme.primaryColor,
                  labelColor: context.appTheme.onSurfaceColor,
                  unselectedLabelColor: context.appTheme.textSubtle,
                  tabs: [
                    Tab(text: 'Posts'),
                    Tab(text: 'Replies'),
                    Tab(text: 'Media'),
                    Tab(text: 'Likes'),
                    Tab(text: 'Bookmarked'),
                  ],
                ),
              ],
            ),
          );
      }),
    );
  }
}

class EditProfileBottomSheet extends StatefulWidget {
  const EditProfileBottomSheet({
    super.key,
  });

  @override
  State<EditProfileBottomSheet> createState() => _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState extends State<EditProfileBottomSheet> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();
 
  Future<void> _pickImage({required bool isAvatar, required BuildContext context}) async {
    final ImagePicker picker = ImagePicker();
    
    try {
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 100,
      );
      if (image != null && context.mounted) {
        final result = await AppUtils.validateImage(image.path);
        if(!context.mounted) return;
        if (result == null) {
          final updateRequest = isAvatar
            ? UpdateProfileRequest(avatar: image.path)
            : UpdateProfileRequest(cover: image.path);
          context.read<ProfileBloc>().add(
            UpdateProfile(updateProfileRequest: updateRequest)
          );
        } else {
          showToast(result);
        }
        
      }
    } catch (e) {
      showToast('Error picking image: $e');
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    _locationController.dispose();
    _websiteController.dispose();
    _birthDateController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ProfileBloc, ProfileState>(

      builder: (context, state) {

        final userInfo = state.mapOrNull(
          loaded: (value) => value.userInfo,
        );
        _nameController.text = userInfo?.fullName ?? '';
        _bioController.text = userInfo?.bio ?? '';
        _locationController.text = userInfo?.country ?? '';
        _websiteController.text =  '';
        _birthDateController.text = userInfo != null && userInfo.birthday != null
                ? userInfo.birthday!.toLocal().toDDMMYY()
                : '';
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton.text(
                  onPressed: () => Navigator.of(context).pop(),
                  text: 'Cancel',
                  textColor: context.appTheme.onSurfaceColor,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 4,
                    horizontal: 0,
                  ),
                ),
                // Save button
                AppButton.text(
                  onPressed: (){
                    final updateRequest = UpdateProfileRequest(
                      fullName: _nameController.text.isNotEmpty ? _nameController.text : null,
                      bio: _bioController.text.isNotEmpty ? _bioController.text : null,
                      // Add other fields as needed
                    );
                    context.read<ProfileBloc>().add(
                      UpdateProfile(updateProfileRequest: updateRequest)
                    );
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                  text: 'Save',
                  textColor: context.appTheme.primaryColor,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsetsGeometry.symmetric(
                    vertical: 4,
                    horizontal: 0,
                  ),
                ),
              ],
            ),
            // Avatar and Banner
            SizedBox(
              height: 160,
              width: context.width,
              child: Stack(
                children: [
                  // Banner
                  SizedBox(
                    height: 120,
                    width: context.width,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AppNetworkImage.post(
                                  imageUrl: userInfo?.cover ?? 'https://www.shutterstock.com/image-vector/default-avatar-profile-icon-vector-600nw-1745180411.jpg',
                                  height: 120,
                                ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: GestureDetector(
                            onTap: () => _pickImage(isAvatar: false, context: context),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.black.withAlpha((0.5 * 255).round()),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
        
                  Align(
                    alignment: Alignment.bottomLeft,
                    child:  Padding(
                      padding: EdgeInsets.all(8),
                      child: Stack(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: context.appTheme.primaryColor,
                                width: 1,
                              ),
                            ),
                            child: AppNetworkImage.avatar(
                              imageUrl: userInfo?.avatar ?? 'https://www.shutterstock.com/image-vector/default-avatar-profile-icon-vector-600nw-1745180411.jpg',
                              size: 70,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () => _pickImage(isAvatar: true, context: context),
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: context.appTheme.primaryColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: context.appTheme.surfaceColor,
                                    width: 2,
                                  ),
                                ),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            EditProfileBottomSheetItem(
              label: 'Name',
              hint: 'Enter your name',
              controller: _nameController,
              maxLinesTextField: 1,
              spacing: 49,
            ),
            EditProfileBottomSheetItem(
              label: 'Bio',
              hint: 'Enter your bio',
              controller: _bioController,
              maxLinesTextField: 3,
              spacing: 68,
            ),
            EditProfileBottomSheetItem(
              label: 'Location',
              hint: 'Enter your location',
              controller: _locationController,
              maxLinesTextField: 1,
              spacing: 28,
            ),
            EditProfileBottomSheetItem(
              label: 'Website',
              hint: 'Enter your website',
              controller: _websiteController,
              maxLinesTextField: 1,
              spacing: 29,
            ),
            EditProfileBottomSheetItem(
              label: 'Birth date',
              hint: 'Enter your birth date',
              controller: _birthDateController,
              maxLinesTextField: 1,
            ),
          ],
        );
      },
    );
  }
}

class EditProfileBottomSheetItem extends StatelessWidget {
  const EditProfileBottomSheetItem({
    super.key,
    required this.label,
    this.hint,
    required this.controller,
    this.spacing = 16.0,
    this.maxLinesTextField = 1,
  });
  final String label;
  final String ? hint;
  final TextEditingController controller;
  final double spacing;
  final int maxLinesTextField;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColor,
        border: Border(
          bottom: BorderSide(
            color: context.appTheme.borderColor,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.start,
        crossAxisAlignment: maxLinesTextField == 1 
          ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        spacing: spacing,
        children: [
          Text(
            label,
            style: context.textStyle.titleSmall,
          ),
          Expanded(
            child: AppTextField(
              controller:  controller,
              hintText: hint,
              maxLines: maxLinesTextField,
              border: InputBorder.none,
              textColor: context.appTheme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class RepliesTab extends StatelessWidget {
  const RepliesTab({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Replies tab'));
}

class MediaTab extends StatelessWidget {
  const MediaTab({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Media tab'));
}

class LikesTab extends StatelessWidget {
  const LikesTab({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Likes tab'));
}

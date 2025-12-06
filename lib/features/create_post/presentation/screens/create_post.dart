import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/utils/debounce.dart';
import 'package:kit/features/create_post/presentation/bloc/create_post_bloc.dart';
import 'package:kit/features/create_post/presentation/widget/create_post_bottom_sheet.dart';
import 'package:kit/features/create_post/presentation/widget/selected_media_item.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/constants/enum/post_view_scope.dart';
import 'package:kit/shared/widgets/app_bottom_sheet.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/app_svg.dart';
import 'package:kit/shared/widgets/app_textfield.dart';
import 'package:kit/shared/widgets/toast.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final TextEditingController _controller = TextEditingController();
  final ImagePicker picker = ImagePicker();
  final Debounce _debounce = Debounce(const Duration(milliseconds: 300));

  Future<void> pickImagesAndVideos(BuildContext context, {required List<AssetEntity> selectedAssets}) async {
    try {
      final List<AssetEntity>? assets = await AssetPicker.pickAssets(
        context,
        pickerConfig: AssetPickerConfig(
          maxAssets: 4, // Giới hạn số lượng ảnh + video có thể chọn
          requestType: RequestType.common, // 🔥 Cho phép chọn cả ảnh + video
          themeColor: context.appTheme.primaryColor, // Màu chủ đề của picker
          gridCount: 4, // số cột hiển thị
          selectedAssets: selectedAssets,
        ),
      );
      if (!context.mounted) return;
      if (assets == null || assets.isEmpty) return; // Người dùng hủy chọn
      debugPrint('Picked ${assets.length} assets.');
      context.read<CreatePostBloc>().add(CollectingDataEvent(mediaAssetEntities: assets));
    } catch (e, st) {
      debugPrint('Error picking media: $e\n$st');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to pick media: $e')),
      );
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CreatePostBloc>().add(CollectingDataEvent());
    });
    super.initState();
  }

  @override
  void dispose() {
    _debounce.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreatePostBloc, CreatePostState>(
      listener: (BuildContext context, CreatePostState state) {
        if (state is CreatePostLoading) {
          // Show loading indicator
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is CreatePostSuccess) {
          // Dismiss loading dialog if showing
          Navigator.of(context, rootNavigator: true).pop();
          showToast('Post created successfully!');
          // Close create post screen
          context.pop();
        } else if (state is CreatePostError) {
          // Dismiss loading dialog if showing
          Navigator.of(context, rootNavigator: true).pop();
          // Show error message
          showToast('Error: ${state.message}');
        }
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Or any other location
        floatingActionButton: BlocBuilder<CreatePostBloc, CreatePostState>(
          builder: (BuildContext context, CreatePostState state) {
            
            String icon = PostViewScope.public.iconPath;
            String name = PostViewScope.public.name;

            if (state is CreatePostCollectingData) {
              icon = state.viewScope.iconPath;
              name = state.viewScope.name;
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // View Scope
                InkWell(
                  onTap: (){
                    showAppBottomSheet(
                      context: context,
                      initialExpand: 0.6,
                      child: CreatePostBottomSheet(),
                    );
                  },

                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: context.appTheme.surfaceColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 8,
                      children: [
                        AppSvg(iconPath: icon, size: 12,),
                        Text(name, style: context.textStyle.bodySmall
                              ?.copyWith(color: context.appTheme.primaryColor),)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    border: Border(top: BorderSide(
                      color: context.appTheme.borderColor,
                      width: 0.5,
                    )),
                  ),
                  child: Row( 
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: AppButton.icon(
                          onPressed: () async {
                            final selectedAssets = <AssetEntity>[];
                            if (state is CreatePostCollectingData && state.mediaAssetEntities != null) {
                              selectedAssets.addAll(state.mediaAssetEntities!);
                            }
                            _debounce.callAsync(() async {
                                await pickImagesAndVideos(context, selectedAssets: selectedAssets);
                                if(!context.mounted) return;
                            });
                          },
                          iconPath: AppAssets.imageSvg,
                          iconColor: context.appTheme.primaryColor,
                          iconSize: 16,
                          backgroundColor: Colors.transparent,
                          padding: const EdgeInsets.all(0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            // SliverAppBar
            BlocBuilder<CreatePostBloc, CreatePostState>(
              builder: (BuildContext context, CreatePostState state) {
                final isCollectingData = state is CreatePostCollectingData
                  && ((state.content != null && state.content!.isNotEmpty));
                return SliverAppBar(
                  pinned: true,
                  elevation: 0,
                  backgroundColor: context.appTheme.surfaceColor,
                  surfaceTintColor: context.appTheme.surfaceColor,
                  leadingWidth: 90,
                  leading: Center(
                    child: AppButton.text(
                      onPressed: () {
                        context.pop();
                      },
                      text: 'Cancel',
                      textColor: context.appTheme.onSurfaceColor,
                      fontSize: 14,
                      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  actions: [
                    if(isCollectingData)
                      InkWell(
                        onTap: () {
                          context.read<CreatePostBloc>().add(CorrectContentEvent(_controller.text));
                        },
                        child: Image.asset(
                          AppAssets.grammarlyPng,
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                        ),
                      ),

                    const SizedBox(width: 12,),

                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: AppButton.elevated(
                        isDisabled: !isCollectingData,
                        onPressed: () {
                          // Handle post creation
                          context.read<CreatePostBloc>().add(StartPostEvent());
                        },
                        text: 'Post',
                        backgroundColor: context.appTheme.primaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                        fontSize: 14,
                      ),
                    ),
                  ],
                );
              },
            ),
      
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  spacing: 16,
                  children: [
                    _buildCollectContentSection(context),

                    BlocBuilder<CreatePostBloc, CreatePostState>(
                      builder: (context, state) {
                        final currentState = state.mapOrNull(
                          collectingData: (value) => value,
                        );
                        
                        if (currentState == null) {
                          return const SizedBox.shrink();
                        }
                        
                        return switch (currentState.correctionStatus) {
                          CorrectionStatus.correcting => Container(
                            width: context.width,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _ThreeDotsLoadingAnimation(),
                              ],
                            ),
                          ),
                          CorrectionStatus.corrected => Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            spacing: 4,
                            children: [
                              Container(
                                width: context.width,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: GptMarkdown(
                                  currentState.correctedContent!.diff
                                ),
                              ),
                              SizedBox(
                                width: 48,
                                child: AppButton.elevated(
                                  text: 'Use',
                                  fontSize: 12,
                                  padding: EdgeInsetsGeometry.all(4),
                                  onPressed: (){
                                    _controller.text = currentState.correctedContent!.corrected;
                                    context.read<CreatePostBloc>().add(ResetCorrectContentEvent());
                                  },
                                ),
                              )
                            ],
                          ),
                          _ => const SizedBox.shrink(),
                        };
                      },
                    ),
                    

                    BlocBuilder<CreatePostBloc, CreatePostState>(
                      builder: (BuildContext context, CreatePostState state) {
                        if(state is CreatePostCollectingData &&  state.mediaAssetEntities != null ) {
                          int imageLength = state.mediaAssetEntities!.length;
                          
                          // Safety check: ensure mediaFiles exists and has same length
                          if (state.mediaFiles == null || 
                              state.mediaFiles!.length != imageLength) {
                            return const SizedBox.shrink();
                          }
                          
                          if(imageLength == 1) {
                            final mediaFile = state.mediaFiles!.first;
                            if (mediaFile == null) {
                              return const SizedBox.shrink();
                            }
                            return SelectedMediaItem(
                              mediaAssetEntities: state.mediaAssetEntities!.first,
                              mediaFile: mediaFile,
                              maxHeight: 420,
                            );
                          }
                          if(imageLength == 0) {
                            return const SizedBox.shrink();
                          }
                          return SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.mediaAssetEntities?.length ?? 0,
                              itemBuilder: (context, index) {
                                final mediaFile = state.mediaFiles![index];
                                if (mediaFile == null) {
                                  return const SizedBox.shrink();
                                }
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: SelectedMediaItem(
                                    mediaAssetEntities: state.mediaAssetEntities![index],
                                    mediaFile: mediaFile,
                                    maxHeight: 200,
                                    isMultipleMedia: true,
                                  ),
                                );
                              },
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppTextField _buildCollectContentSection(BuildContext context) {
    return AppTextField(
      controller: _controller,
      keyboardType: TextInputType.multiline,
      maxLines: null, // grow dynamically
      hintText: 'What\'s on your mind?',
      border: InputBorder.none,
      onChanged: (value) {
        context.read<CreatePostBloc>().add(CollectingDataEvent(content: value));
      },
    );
  }
}

class _ThreeDotsLoadingAnimation extends StatefulWidget {
  const _ThreeDotsLoadingAnimation();

  @override
  State<_ThreeDotsLoadingAnimation> createState() => _ThreeDotsLoadingAnimationState();
}

class _ThreeDotsLoadingAnimationState extends State<_ThreeDotsLoadingAnimation> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: List.generate(3, (index) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final delay = index * 0.2;
            final value = (_controller.value - delay) % 1.0;
            final scale = value < 0.5 
                ? 1.0 + (value * 2) * 0.5
                : 1.5 - ((value - 0.5) * 2) * 0.5;
            
            return Transform.scale(
              scale: scale,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: context.appTheme.primaryColor.withAlpha((0.7 * 255).round()),
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}


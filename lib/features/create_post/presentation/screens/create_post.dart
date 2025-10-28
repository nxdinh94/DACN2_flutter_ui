import 'package:flutter/material.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/app_textfield.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          // ✅ SliverAppBar
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: context.appTheme.surfaceColor,
            leadingWidth: 90,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: AppButton.text(
                onPressed: () => Navigator.of(context).pop(),
                text: 'Cancel',
                textColor: context.appTheme.onSurfaceColor,
                fontSize: 14
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: AppButton.elevated(
                  onPressed: () {
                    // Handle post creation
                  },
                  text: 'Post',
                  backgroundColor: context.appTheme.primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  fontSize: 14,
                ),
              ),
            ],
          ),

          // ✅ SliverToBoxAdapter allows normal widgets inside a sliver layout
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppTextField(
                controller: _controller,
                keyboardType: TextInputType.multiline,
                maxLines: null, // grow dynamically
                minLines: 40,
                hintText: 'What\'s on your mind?',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/create_post/presentation/bloc/create_post_bloc.dart';
import 'package:kit/features/create_post/presentation/widget/tick_success.dart';
import 'package:kit/shared/constants/enum/post_view_scope.dart';
import 'package:kit/shared/widgets/app_svg.dart';

class CreatePostBottomSheet extends StatelessWidget {
  const CreatePostBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePostBloc, CreatePostState>(
      builder: (BuildContext context, CreatePostState state) {
        PostViewScope? selectedScope;
        if (state is CreatePostCollectingData) {
          selectedScope = state.viewScope;
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
            children: [
              Text('Who can read your post?', style: context.textStyle.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w900),),
              Text('Pick who can see this post.', style: context.textStyle.bodyMedium
                    ?.copyWith(color: context.appTheme.textSubtle),),
              ...PostViewScope.values.map((scope) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
                  child: InkWell(
                    onTap: () {
                      context.read<CreatePostBloc>().add(
                        CollectingDataEvent(viewScope: scope)
                      );
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 6, right: 6),
                              child: Container(
                                width: 48,
                                height: 48,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: context.appTheme.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: AppSvg(
                                  iconPath: scope.iconPath, size: 20,
                                  color: context.appTheme.onPrimaryColor,
                                )
                              ),
                            ),
                            if(scope == selectedScope)
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: TickSuccess(),
                              ),
                          ],
                        ),
                        Text(scope.name, style: context.textStyle.bodyMedium)
                      ],
                    ),
                  ),
                );
              }),
            ],
          );
      },
    );
  }
}


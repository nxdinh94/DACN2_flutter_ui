

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/features/profile/data_source/repository/profile_repository.dart';
import 'package:kit/shared/model/post/post_entity.dart';

part 'post_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

@injectable
class PostsBloc extends Bloc<PostEvent, PostsState> {
  final ProfileRepository profileRepository;
  PostsBloc(this.profileRepository) : super(const PostsState.initial()) {
   on<GetPosts>(_onGetPosts);
  }
  Future<void> _onGetPosts(GetPosts event, Emitter<PostsState> emit) async {
    emit(const PostsState.loading());
    final result = await profileRepository.getSelfPosts();
    result.fold(
      (error) => emit(PostsState.error(message: error)),
      (posts) => emit(PostsState.loaded(
        selfPosts: posts,
      )),
    );

  }
}
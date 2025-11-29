

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
   on<GetSelfPosts>(_onGetSelfPosts);
   on<GetBookMarkedPosts>(_onGetBookMarkedPosts);
  }

  Future<void> _onGetBookMarkedPosts(GetBookMarkedPosts event, Emitter<PostsState> emit) async {
    emit(const PostsState.loading());
    final result = await profileRepository.getBookMarkedPosts();
    result.fold(
      (error) => emit(PostsState.error(message: error)),
      (posts) {
          if(state is PostsLoaded) {
            final currentState = state as PostsLoaded;
            final newState = currentState.copyWith(
              bookmarkedPosts: posts,
            );
            
            emit(newState);
          } else {
            emit(PostsState.loaded(bookmarkedPosts: posts));
          }
      },
    );

  }

  Future<void> _onGetSelfPosts(GetSelfPosts event, Emitter<PostsState> emit) async {
    emit(const PostsState.loading());
    final result = await profileRepository.getSelfPosts();
    result.fold(
      (error) => emit(PostsState.error(message: error)),
      (posts) {
          if(state is PostsLoaded) {
            final currentState = state as PostsLoaded;
            final newState = currentState.copyWith(
              selfPosts: posts,
            );
            
            emit(newState);
          } else {
            emit(PostsState.loaded(selfPosts: posts));
          }
      },
    );

  }
}
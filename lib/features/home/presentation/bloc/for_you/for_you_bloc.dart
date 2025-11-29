import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/home/data_source/repository/home_repository.dart';
import 'package:kit/shared/model/post/post_entity.dart';

part 'for_you_event.dart';
part 'for_you_state.dart';
part 'for_you_bloc.freezed.dart';

@injectable
class ForYouBloc extends Bloc<ForYouEvent, ForYouState> {
  final HomeRepository homeRepository;
  
  static const int _pageLimit = 10;

  ForYouBloc(this.homeRepository) : super(const ForYouState.initial()) {
    on<FetchForYouPosts>(_onFetchPosts);
    on<RefreshForYouPosts>(_onRefreshPosts);
    on<LoadMoreForYouPosts>(_onLoadMorePosts);
  }

  Future<void> _onFetchPosts(
    FetchForYouPosts event,
    Emitter<ForYouState> emit,
  ) async {
    emit(const ForYouState.loading());
    
    final result = await homeRepository.getForYouPosts(
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (error) => emit(ForYouState.error(message: error)),
      (posts) => emit(ForYouState.loaded(
        posts: posts,
        currentPage: event.page,
        hasReachedMax: posts.length < event.limit,
      )),
    );
  }

  Future<void> _onRefreshPosts(
    RefreshForYouPosts event,
    Emitter<ForYouState> emit,
  ) async {
    final result = await homeRepository.getForYouPosts(
      page: 1,
      limit: _pageLimit,
    );

    result.fold(
      (error) => emit(ForYouState.error(message: error)),
      (posts) => emit(ForYouState.loaded(
        posts: posts,
        currentPage: 1,
        hasReachedMax: posts.length < _pageLimit,
      )),
    );
  }

  Future<void> _onLoadMorePosts(
    LoadMoreForYouPosts event,
    Emitter<ForYouState> emit,
  ) async {
    final currentState = state;
    
    if (currentState is! ForYouLoaded) return;
    if (currentState.hasReachedMax || currentState.isLoadingMore) return;

    emit(currentState.copyWith(isLoadingMore: true));

    final nextPage = currentState.currentPage + 1;
    final result = await homeRepository.getForYouPosts(
      page: nextPage,
      limit: _pageLimit,
    );

    result.fold(
      (error) => emit(currentState.copyWith(isLoadingMore: false)),
      (newPosts) => emit(ForYouState.loaded(
        posts: [...currentState.posts, ...newPosts],
        currentPage: nextPage,
        hasReachedMax: newPosts.length < _pageLimit,
        isLoadingMore: false,
      )),
    );
  }
}

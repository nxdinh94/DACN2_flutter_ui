import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/home/data_source/repository/home_repository.dart';
import 'package:kit/shared/model/post/post_entity.dart';

part 'for_you_event.dart';
part 'for_you_state.dart';
part 'for_you_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  
  static const int _pageLimit = 10;

  HomeBloc(this.homeRepository) : super(const HomeState.initial()) {
    on<FetchHomePosts>(_onFetchPosts);
    on<RefreshHomePosts>(_onRefreshPosts);
    on<LoadMoreHomePosts>(_onLoadMorePosts);
    on<FetchFollowingPosts>(_onFetchFollowingPosts);
    on<RefreshFollowingPosts>(_onRefreshFollowingPosts);
    on<LoadMoreFollowingPosts>(_onLoadMoreFollowingPosts);
  }

  Future<void> _onFetchPosts(
    FetchHomePosts event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    
    final result = await homeRepository.getForYouPosts(
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (error) => emit(HomeState.error(message: error)),
      (posts) => emit(HomeState.loaded(
        forYouPost: posts,
        forYouCurrentPage: event.page,
        forYouHasReachedMax: posts.length < event.limit,
        currentPage: event.page,
        hasReachedMax: posts.length < event.limit,
      )),
    );
  }

  Future<void> _onRefreshPosts(
    RefreshHomePosts event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    
    final result = await homeRepository.getForYouPosts(
      page: 1,
      limit: _pageLimit,
    );

    result.fold(
      (error) => emit(HomeState.error(message: error)),
      (posts) {
        if (currentState is HomeLoaded) {
          emit(currentState.copyWith(
            forYouPost: posts,
            forYouCurrentPage: 1,
            forYouHasReachedMax: posts.length < _pageLimit,
            currentPage: 1,
            hasReachedMax: posts.length < _pageLimit,
          ));
        } else {
          emit(HomeState.loaded(
            forYouPost: posts,
            forYouCurrentPage: 1,
            forYouHasReachedMax: posts.length < _pageLimit,
            currentPage: 1,
            hasReachedMax: posts.length < _pageLimit,
          ));
        }
      },
    );
  }

  Future<void> _onLoadMorePosts(
    LoadMoreHomePosts event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    
    if (currentState is! HomeLoaded) return;
    if (currentState.forYouHasReachedMax || currentState.forYouIsLoadingMore) return;

    emit(currentState.copyWith(forYouIsLoadingMore: true, isLoadingMore: true));

    final nextPage = currentState.forYouCurrentPage + 1;
    final result = await homeRepository.getForYouPosts(
      page: nextPage,
      limit: _pageLimit,
    );

    result.fold(
      (error) => emit(currentState.copyWith(forYouIsLoadingMore: false, isLoadingMore: false)),
      (newPosts) => emit(currentState.copyWith(
        forYouPost: [...currentState.forYouPost, ...newPosts],
        forYouCurrentPage: nextPage,
        forYouHasReachedMax: newPosts.length < _pageLimit,
        forYouIsLoadingMore: false,
        currentPage: nextPage,
        hasReachedMax: newPosts.length < _pageLimit,
        isLoadingMore: false,
      )),
    );
  }

  // Following posts handlers
  Future<void> _onFetchFollowingPosts(
    FetchFollowingPosts event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    
    if (currentState is HomeLoaded) {
      emit(currentState.copyWith(followingIsLoading: true));
    } else {
      emit(const HomeState.loading());
    }
    
    final result = await homeRepository.getFollowingPosts(
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (error) {
        if (currentState is HomeLoaded) {
          emit(currentState.copyWith(followingIsLoading: false));
        } else {
          emit(HomeState.error(message: error));
        }
      },
      (posts) {
        if (currentState is HomeLoaded) {
          emit(currentState.copyWith(
            followingPost: posts,
            followingCurrentPage: event.page,
            followingHasReachedMax: posts.length < event.limit,
            followingIsLoading: false,
          ));
        } else {
          emit(HomeState.loaded(
            followingPost: posts,
            followingCurrentPage: event.page,
            followingHasReachedMax: posts.length < event.limit,
          ));
        }
      },
    );
  }

  Future<void> _onRefreshFollowingPosts(
    RefreshFollowingPosts event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    
    final result = await homeRepository.getFollowingPosts(
      page: 1,
      limit: _pageLimit,
    );

    result.fold(
      (error) => {}, // Silent fail on refresh
      (posts) {
        if (currentState is HomeLoaded) {
          emit(currentState.copyWith(
            followingPost: posts,
            followingCurrentPage: 1,
            followingHasReachedMax: posts.length < _pageLimit,
          ));
        } else {
          emit(HomeState.loaded(
            followingPost: posts,
            followingCurrentPage: 1,
            followingHasReachedMax: posts.length < _pageLimit,
          ));
        }
      },
    );
  }

  Future<void> _onLoadMoreFollowingPosts(
    LoadMoreFollowingPosts event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    
    if (currentState is! HomeLoaded) return;
    if (currentState.followingHasReachedMax || currentState.followingIsLoadingMore) return;

    emit(currentState.copyWith(followingIsLoadingMore: true));

    final nextPage = currentState.followingCurrentPage + 1;
    final result = await homeRepository.getFollowingPosts(
      page: nextPage,
      limit: _pageLimit,
    );

    result.fold(
      (error) => emit(currentState.copyWith(followingIsLoadingMore: false)),
      (newPosts) => emit(currentState.copyWith(
        followingPost: [...currentState.followingPost, ...newPosts],
        followingCurrentPage: nextPage,
        followingHasReachedMax: newPosts.length < _pageLimit,
        followingIsLoadingMore: false,
      )),
    );
  }
}

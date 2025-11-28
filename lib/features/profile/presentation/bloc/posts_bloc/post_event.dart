part of 'posts_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
   factory PostEvent.getPosts({required int page}) = GetPosts;
}
part of 'posts_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
   factory PostEvent.getSelfPosts({required int page}) = GetSelfPosts;
   factory PostEvent.getBookMarkedPosts({required int page}) = GetBookMarkedPosts;
}
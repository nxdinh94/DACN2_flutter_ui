


import 'dart:typed_data';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CacheThumbnailVideo extends HydratedCubit<Map<String, Uint8List?>> {
  CacheThumbnailVideo() : super({});

  void storeData(String key, Uint8List? value) {
    emit({...state, key: value});
  }

  @override
  Map<String, Uint8List?> fromJson(Map<String, dynamic> json) {
    final Map<String, Uint8List?> result = {};
    json.forEach((key, value) {
      result[key] = value as Uint8List?;
    });
    return result;
  }

  @override
  Map<String, dynamic> toJson(Map<String, Uint8List?> state) {
    final Map<String, dynamic> result = {};
    state.forEach((key, value) {
      result[key] = value;
    });
    return result;
  }
}
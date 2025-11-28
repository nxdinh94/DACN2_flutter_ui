import 'package:kit/shared/constants/app_assets.dart';

enum PostViewScope {
  PUBLIC,
  FOLLOWERS,
  FRIENDS,
  PRIVATE,
}

extension PostViewScopeExtension on PostViewScope {
  String get name {
    switch (this) {
      case PostViewScope.PUBLIC:
        return 'Public';
      case PostViewScope.FOLLOWERS:
        return 'Followers';
      case PostViewScope.FRIENDS:
        return 'Friends';
      case PostViewScope.PRIVATE:
        return 'Private';
    }
  }
  String get value {
    switch (this) {
      case PostViewScope.PUBLIC:
        return 'PUBLIC';
      case PostViewScope.FOLLOWERS:
        return 'FOLLOWERS';
      case PostViewScope.FRIENDS:
        return 'FRIENDS';
      case PostViewScope.PRIVATE:
        return 'PRIVATE';
    }
  }
  String get iconPath {
    switch (this) {
      case PostViewScope.PUBLIC:
        return AppAssets.globalSvg;
      case PostViewScope.FOLLOWERS:
        return AppAssets.verifiedCheckSvg;
      case PostViewScope.FRIENDS:
        return AppAssets.followedAccountSvg;
      case PostViewScope.PRIVATE:
        return AppAssets.privateSvg;
    }
  }
}
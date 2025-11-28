import 'package:kit/shared/constants/app_assets.dart';

enum PostViewScope {
  public,
  followers,
  friends,
  private,
}

extension PostViewScopeExtension on PostViewScope {
  String get name {
    switch (this) {
      case PostViewScope.public:
        return 'Public';
      case PostViewScope.followers:
        return 'Followers';
      case PostViewScope.friends:
        return 'Friends';
      case PostViewScope.private:
        return 'Private';
    }
  }
  String get value {
    switch (this) {
      case PostViewScope.public:
        return 'PUBLIC';
      case PostViewScope.followers:
        return 'FOLLOWERS';
      case PostViewScope.friends:
        return 'FRIENDS';
      case PostViewScope.private:
        return 'PRIVATE';
    }
  }
  String get iconPath {
    switch (this) {
      case PostViewScope.public:
        return AppAssets.globalSvg;
      case PostViewScope.followers:
        return AppAssets.verifiedCheckSvg;
      case PostViewScope.friends:
        return AppAssets.followedAccountSvg;
      case PostViewScope.private:
        return AppAssets.privateSvg;
    }
  }
}
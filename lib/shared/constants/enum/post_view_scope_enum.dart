import 'package:kit/shared/constants/app_assets.dart';

enum PostViewScope {
  everyone,
  verifiedAccounts,
  accountsYouFollow,
  onlyMe,
  onlyAccountYouMention,
}

extension PostViewScopeExtension on PostViewScope {
  String get name {
    switch (this) {
      case PostViewScope.everyone:
        return 'Everyone';
      case PostViewScope.verifiedAccounts:
        return 'Verified Accounts';
      case PostViewScope.accountsYouFollow:
        return 'Accounts You Follow';
      case PostViewScope.onlyMe:
        return 'Only Me';
      case PostViewScope.onlyAccountYouMention:
        return 'Only Account You Mention';
    }
  }
  String get value {
    switch (this) {
      case PostViewScope.everyone:
        return 'everyone';
      case PostViewScope.verifiedAccounts:
        return 'verified_accounts';
      case PostViewScope.accountsYouFollow:
        return 'accounts_you_follow';
      case PostViewScope.onlyMe:
        return 'only_me';
      case PostViewScope.onlyAccountYouMention:
        return 'only_account_you_mention';
    }
  }
  String get iconPath {
    switch (this) {
      case PostViewScope.everyone:
        return AppAssets.globalSvg;
      case PostViewScope.verifiedAccounts:
        return AppAssets.verifiedCheckSvg;
      case PostViewScope.accountsYouFollow:
        return AppAssets.followedAccountSvg;
      case PostViewScope.onlyMe:
        return AppAssets.privateSvg;
      case PostViewScope.onlyAccountYouMention:
        return AppAssets.mentionSvg;
    }
  }
}
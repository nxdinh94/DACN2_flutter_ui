import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/features/home/presentation/pages/following_tab.dart';
import 'package:kit/features/home/presentation/pages/for_you_tab.dart';
import 'package:kit/shared/constants/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _floatHeaderSlivers = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutes.createPost);
        },
        shape: CircleBorder(),
        backgroundColor: context.appTheme.primaryColor,
        child: Icon(Icons.add, size: 32, color: context.appTheme.onPrimaryColor),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          floatHeaderSlivers: _floatHeaderSlivers, 
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()), 
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 2,
                backgroundColor: context.appTheme.surfaceColor,
                title: InkWell(
                  onTap: () {
                    context.read<AuthBloc>().add(LogoutRequested());
                  },
                  child: Image.asset(
                    AppAssets.appLogo,
                    width: 120,
                    height: 120,
                  ),
                ),
                centerTitle: true,
                bottom: TabBar(
                  indicatorColor: context.appTheme.primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorAnimation: TabIndicatorAnimation.linear,
                  unselectedLabelStyle: context.textStyle.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: context.appTheme.textSubtle,
                  ),
                  labelStyle: context.textStyle.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: context.appTheme.onSurfaceColor,
                  ),
                  labelPadding: EdgeInsets.zero,
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  tabs: const [
                    Tab(text: 'For you', height: 36),
                    Tab(text: 'Following', height: 36),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

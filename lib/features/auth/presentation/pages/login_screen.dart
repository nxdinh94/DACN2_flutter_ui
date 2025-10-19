import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:kit/core/di/getIt.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_button.dart';

import '../../../../core/theme/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void _handleCreateAccount(BuildContext context) {
    context.push(AppRoutes.sendOtp);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(AppAssets.appLogo, width: 120, height: 120,),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Let learn english with Linggo', style: context.textStyle.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800
                  ),)
                )
              ),
              AppButton.elevated(
                onPressed: ()async {
                  Storage storage = HydratedBloc.storage;
                  await storage.clear();
                },
                text: 'Continue with Google',
                fontWeight: FontWeight.w600,
                iconPath: AppAssets.googleIcon,
                textColor: context.appTheme.blackColor,
                backgroundColor: context.appTheme.whiteColor,
                borderColor: context.isLightMode ? context.appTheme.borderColor: context.appTheme.blackColor,
              ),
              Or(),
              AppButton.elevated(
                onPressed: () => _handleCreateAccount(context),
                text: 'Create account',
                fontWeight: FontWeight.w600,
                textColor: context.appTheme.onPrimaryColor,
                backgroundColor: context.appTheme.primaryColor,
                borderColor: context.appTheme.blackColor,
              ),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Text('By continuing, you agree to our Terms of Service and Privacy Policy', style: context.textStyle.bodyMedium,)
              ),

              SafeArea(
                minimum: EdgeInsets.only(bottom: 14),
                child: Text(
                  'Have an account already? Log in', style: context.textStyle.bodyLarge,
                ),
              )

            ],
          ),
        )

      ),
    );
  }
}

class Or extends StatelessWidget {
  const Or({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppTheme.borderColor,
            thickness: .75,
            indent: 16,
            endIndent: 16,
          ),
        ),
        Text('or'),
        Expanded(
          child: Divider(
            color: AppTheme.borderColor,
            thickness: .75,
            indent: 16,
            endIndent: 16,
          ),
        ),
      ],
    );
  }
}
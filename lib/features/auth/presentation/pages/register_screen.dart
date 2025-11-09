import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/app_textfield.dart';
import 'package:kit/shared/widgets/toast.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _verificationCodeController = TextEditingController(text: '330999');
  final TextEditingController _passwordController = TextEditingController(text: "Dinh@#@fdfd2");
  final TextEditingController _fullNameController = TextEditingController(text: "Nguyen Xuan Dinh");
  final TextEditingController _confirmPasswordController = TextEditingController(text: "Dinh@#@fdfd2");

  @override
  void dispose() {
    _passwordController.dispose();
    _verificationCodeController.dispose();
    _fullNameController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  void _handleNextButton(BuildContext context) {
    context.read<AuthBloc>().add(
      RegisterRequested(
        email: GoRouterState.of(context).extra! as String,
        password: _passwordController.text.trim(),
        confirmPassword: _confirmPasswordController.text.trim(),
        name: _fullNameController.text.trim(),
        code: _verificationCodeController.text.trim(),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppAssets.appLogo, width: 120, height: 120,),
        centerTitle: true,
        surfaceTintColor: context.appTheme.surfaceColor,
      ),
      // resizeToAvoidBottomInset: false,
      floatingActionButton: BlocConsumer<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) { 
          bool isLoading = state is AuthRegister && state.isLoading == true;
          return SizedBox(
            width: 136, height: 36,
            child: AppButton.elevated(
              onPressed: ()=> _handleNextButton(context), 
              text: 'Create account',
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
              isDisabled: isLoading,
              backgroundColor: context.appTheme.surfaceColor,
            ),
          );
         },
        listener: (BuildContext context, AuthState state) { 
          state.whenOrNull(
            register: (isLoading) {
              if(isLoading) return;
              showToast('Registration successful. Please login.');
              context.push(AppRoutes.login);
            },
          );
         },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              Text(
                'Complete Registration',
                style: context.textStyle.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800
                ),
              ),
              Text(
                'Verify email and setup your account', style: context.textStyle.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: context.appTheme.primaryColor,
                      thickness: 3,
                      endIndent: 100,
                      indent: 100,
                      radius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: context.appTheme.surfaceColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: .2),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: BlocBuilder<AuthBloc, AuthState>(
                  
                  builder: (BuildContext context, AuthState state) {
                    String ? codeError;
                    String ? nameError;
                    String ? passwordError;
                    String ? confirmPasswordError;
                    state.whenOrNull(
                      registerValidation: (password, confirmPassword, name, code) {
                        passwordError = password;
                        confirmPasswordError = confirmPassword;
                        nameError = name;
                        codeError = code;
                      },
                    );
                    return Column(
                      spacing: 12,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                'We have sent a verification code to', 
                                textAlign: TextAlign.center,
                                style: context.textStyle.bodyMedium,
                              ),
                              Text(
                                GoRouterState.of(context).extra! as String, textAlign: TextAlign.center,
                                style: context.textStyle.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: context.appTheme.primaryColor,
                                ),
                              ),
                          ],
                        ),
                        
                        AppTextField(
                          controller: _verificationCodeController,
                          hintText: 'Verification Code',
                          errorText: codeError,
                        ),
                        AppTextField(
                          controller: _fullNameController,
                          hintText: 'Full Name',
                          errorText: nameError,
                        ),
                        AppTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                          errorText: passwordError,
                        ),
                        AppTextField(
                          controller: _confirmPasswordController,
                          hintText: 'Confirm Password',
                          errorText: confirmPasswordError,
                        ),
                      ],
                  );
                
                  },
                ),
              ),
          
            ],
          ),
        ),
      )
    );
  }

}
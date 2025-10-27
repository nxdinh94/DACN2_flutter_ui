import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_button.dart';
import 'package:kit/shared/widgets/app_textfield.dart';
import 'package:kit/shared/widgets/toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void _handleLogin(BuildContext context) {
    context.read<AuthBloc>().add(
      LoginRequested(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      )
    );
  }
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'nguyenxuandinh336@gmail.com');
    _passwordController = TextEditingController(text: 'Dinh@#@fdfd2');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppAssets.appLogo, width: 120, height: 120,),
        centerTitle: true,
        surfaceTintColor: context.appTheme.surfaceColor,
      ),
      floatingActionButton: BlocConsumer<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) { 
          bool isLoading = state is AuthLogin && state.isLoading == true;
          return SizedBox(
            width: 76, 
            height: 36,
            child: AppButton.elevated(
              onPressed: ()=> _handleLogin(context), 
              text: 'Login',
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
              backgroundColor: context.appTheme.secondaryColor, 
              isDisabled: isLoading,
            ),
          );
         },
        listener: (BuildContext context, AuthState state) { 
          state.maybeWhen(
            error: (sentOptMessage, registerMessage, loginMessage, logoutMessage) {
              if(loginMessage != null) {
                showToast(loginMessage);
              }
            },
            login: (isLoading) {
              if(isLoading) {
                return;
              }
              showToast( 'Login successful');
            },
            orElse: () {},
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
                'Login to your account',
                style: context.textStyle.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800
                ),
              ),
              Text(
                'Enter your email and password to continue', style: context.textStyle.bodyLarge,
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
                    String ? emailError;
                    String ? passwordError;

                    state.whenOrNull(
                      loginValidation: (email, password) {
                        emailError = email;
                        passwordError = password;
                      },
                    );
                    return Column(
                      spacing: 12,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppTextField(
                          controller: _emailController,
                          hintText: 'Email',
                          errorText: emailError,
                        ),
                        AppTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                          errorText: passwordError,
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
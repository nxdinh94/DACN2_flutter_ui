import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/core/router/app_routes.dart';
import 'package:kit/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:kit/shared/constants/app_assets.dart';
import 'package:kit/shared/widgets/app_button.dart';

class SendOtpScreen extends StatefulWidget {
  const SendOtpScreen({super.key});

  @override
  State<SendOtpScreen> createState() => _SendOtpScreenState();
}

class _SendOtpScreenState extends State<SendOtpScreen> {

  late final TextEditingController _emailController;

  void _handleNextButton(BuildContext context) {
    context.read<AuthBloc>().add(SendOtpRequested(email: _emailController.text.trim()));
  }
  @override
  void initState() {
    _emailController = TextEditingController(text: 'nguyenxuandinh336@gmail.com');
    super.initState();
  }
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppAssets.appLogo, width: 120, height: 120,),
        centerTitle: true,
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 36,
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              otpSent: (state) {
                if(state) {
                  return;
                }
                context.push(
                  '${AppRoutes.sendOtp}${AppRoutes.register}',
                  extra: _emailController.text.trim(),
                );
              },
            );
          },
          builder: (context, state) {
            final isLoading = state is AuthOtpSent && state.isLoading == true;
            return AppButton.elevated(
              onPressed: isLoading ? null : () => _handleNextButton(context),
              text: 'Next',
              borderColor: context.appTheme.primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
              isDisabled: isLoading,
            );
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              'Create your account', 
              style: context.textStyle.titleLarge?.copyWith(
                fontWeight: FontWeight.w800
              ),
            ),
            Text(
              'Enter your email to get started', style: context.textStyle.bodyLarge,
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
            BlocBuilder<AuthBloc, AuthState>(
              builder: (BuildContext context, AuthState state) {
                String textError = '';
                if(state is AuthError && state.sentOptMessage != null) {
                  textError = state.sentOptMessage!;
                }
                return AppTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  errorText: textError.isEmpty ? null : textError,
                );
              },
            ),
          ],
        ),
      )
    );
  }
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key, required this.controller, this.hintText,
    this.keyboardType = TextInputType.name,
    this.errorText,
  });

  final TextEditingController controller;
  final String? hintText;
  final TextInputType ? keyboardType;
  final String? errorText;


  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Email',
        hintStyle: context.textStyle.bodyLarge?.copyWith(
          color: context.appTheme.textSubtle,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.borderColor, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.primaryColor, width: 2),
        ),
        contentPadding: EdgeInsets.zero,
        
        errorStyle: context.textStyle.bodySmall?.copyWith(
          color: context.appTheme.errorColor,
        ),
        errorText: widget.errorText,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.errorColor, width: 1),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: context.appTheme.errorColor, width: 1),
        ),
      ),
    );
  }
}


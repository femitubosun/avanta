import 'package:avanta/shared/colors.dart';
import 'package:avanta/shared/custom_button.dart';
import 'package:avanta/shared/text.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static String routeName = '/signup';

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo-alt.png',
                    height: 23,
                  ),
                  Text(
                    "Advanta",
                    style: TextStyle(
                        color: CustomColors.primary700,
                        fontWeight: FontWeight.w900,
                        fontSize: 22.3),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              CustomText(
                text: "Set up your Advanta account",
                variant: CustomTextVariant.bodyMediumRegular,
                color: CustomColors.primary600,
              ),
              const SizedBox(
                height: 64,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(text: "Sign up", onTap: () {}),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(), // Divider on the left side
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: CustomText(
                          text: "Or better yet...",
                          variant: CustomTextVariant.bodyLargeRegular,
                          color: CustomColors.primary700),
                    ),
                    const Expanded(
                      child: Divider(), // Divider on the right side
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  CustomButton(
                    text: "Continue with Google",
                    onTap: () {},
                    variant: CustomButtonVariant.outline,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    text: "Continue with Facebook",
                    onTap: () {},
                    variant: CustomButtonVariant.outline,
                  )
                ],
              ),
              const SizedBox(
                height: 88,
              ),
              CustomText(
                  text: "Already have an account? Login",
                  variant: CustomTextVariant.bodyMediumRegular,
                  color: CustomColors.primary900),
              const SizedBox(
                height: 24,
              ),
              CustomText(
                  text:
                      "By creating an account, you accept our Terms and conditions you read our Privacy Policy",
                  variant: CustomTextVariant.bodyMediumRegular,
                  color: CustomColors.primary600)
            ],
          ),
        ),
      ),
    )));
  }
}

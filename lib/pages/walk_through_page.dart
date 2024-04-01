import 'package:avanta/pages/signup_page.dart';
import 'package:avanta/shared/colors.dart';
import 'package:avanta/shared/custom_button.dart';
import 'package:flutter/material.dart';

class WalkthroughPage extends StatelessWidget {
  static const routeName = '/walkthrough';
  const WalkthroughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 241, 250, 1.0),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xffE1E0F1),
              height: 449.0,
              child: Center(
                child: Image.asset(
                  'assets/images/banner.png',
                  height: 72,
                ),
              ),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 59),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome to your new inbox",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Save time with faster, simpler messaging-at home or on the go",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff15104D)),
                  ),
                  const SizedBox(
                    height: 84,
                  ),
                  Container(
                    height: 4,
                    color: CustomColors.primary300,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 81,
                      child: CustomButton(
                        text: "Next",
                        onTap: () {
                          Navigator.pushNamed(context, SignupPage.routeName);
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

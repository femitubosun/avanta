import 'package:avanta/pages/walk_through_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f1fa),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 90,
              ),
              const SizedBox(
                height: 140,
              ),
              Image.asset(
                'assets/images/banner.png',
                height: 72,
                width: 105,
              ),
              const SizedBox(
                height: 165,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: Text(
                  "The best place to buy, sell and go live!",
                  style: TextStyle(
                    color: Color(0xff484473),
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    // shadows: [
                    //   Shadow(
                    //     blurRadius: 5, // Shadow blur radius
                    //     color: Colors.grey, // Shadow color
                    //     offset: Offset(2, 2), // Shadow offset
                    //   ),
                    // ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, WalkthroughPage.routeName);
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff231E58)), // Set button color
                    minimumSize: MaterialStateProperty.all<Size>(
                        const Size(double.infinity, 49)),
                  ),
                  child: const Text('Get started'),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text("Already have an account? Log in")
            ],
          ),
        ),
      )),
    );
  }
}

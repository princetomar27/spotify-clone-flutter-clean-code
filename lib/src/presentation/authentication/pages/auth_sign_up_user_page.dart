import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotifyflutterclone/common/helpers/is_dark_theme_helper.dart';
import 'package:spotifyflutterclone/common/helpers/navigation_helpers.dart';
import 'package:spotifyflutterclone/common/widgets/app_bar/main_app_bar_widget.dart';
import 'package:spotifyflutterclone/common/widgets/main_app_button_widget.dart';
import 'package:spotifyflutterclone/core/assets/app_vectors.dart';
import 'package:spotifyflutterclone/src/presentation/authentication/pages/auth_sign_in_user_page.dart';
import 'package:svg_flutter/svg.dart';

class AuthSignUpPage extends StatelessWidget {
  const AuthSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(
        appBarTitle: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
        ),
      ),
      bottomNavigationBar: _signInText(context),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        alignment: Alignment.center,
        child: Column(children: [
          const Text(
            "Register",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          // Name tf
          TextField(
            decoration: const InputDecoration(hintText: "Full Name")
                .applyDefaults(Theme.of(context).inputDecorationTheme),
          ),

          // Email tf

          const SizedBox(
            height: 20,
          ),

          // Name tf
          TextField(
            decoration: const InputDecoration(hintText: "Enter Email")
                .applyDefaults(Theme.of(context).inputDecorationTheme),
          ),

          const SizedBox(
            height: 20,
          ),

          // Name tf
          TextField(
            decoration: const InputDecoration(
              hintText: "Password",
            ).applyDefaults(Theme.of(context).inputDecorationTheme),
          ),
          const SizedBox(
            height: 40,
          ),

          MainAppButtonWidget(
            buttonText: 'Create Account',
            onButtonPressed: () {},
          ),
        ]),
      ),
    );
  }

  Widget _signInText(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
      ),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Do You have an Account?',
            style: TextStyle(
              color: ctx.isDarkMode ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: ' Sign In',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      nextScreen(
                        ctx,
                        const AuthSignInPage(),
                      );
                    })
            ],
          )),
    );
  }
}

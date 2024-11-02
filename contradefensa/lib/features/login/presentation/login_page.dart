import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:contradefensa/config/theme/theme.dart';
import 'package:contradefensa/features/login/presentation/login_form_widget.dart';
import 'package:contradefensa/features/login/presentation/social_login_widget.dart';
import 'package:contradefensa/shared/logo_widget.dart';
import 'package:contradefensa/utils/extensions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(158, 0, 0, .85),
        statusBarIconBrightness: Brightness.light, // Android light icons
        statusBarBrightness: Brightness.light, // iOS light icons
      ),
    );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/hacker-matrix.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(158, 0, 0, .85),
              title: Text(
                context.l10n.login,
                style: AppTheme.text.displayMedium,
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Color.fromRGBO(0, 0, 0, .75),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: [
                            logo,
                            SizedBox(height: 40),
                            Text(context.l10n.loginIntroTitle)
                          ],
                        ),
                      ),
                    ),
                    LoginForm(),
                    SocialLoginWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:contradefensa/config/theme/theme.dart';
import 'package:contradefensa/utils/extensions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          MyTextFormField(
            labelText: context.l10n.email,
            icon: Icons.alternate_email,
          ),
          SizedBox(height: 40),
          MyTextFormField(
            labelText: context.l10n.password,
            icon: Icons.password,
            obscureText: true,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal.shade600,
              fixedSize: Size(double.infinity, 40),
              minimumSize: Size(double.infinity, 50),
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              context.l10n.home.toUpperCase(),
              style: (AppTheme.text.displayMedium),
            ),
            onPressed: () => context.go('/'),
          ),
        ],
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String labelText;
  final bool? obscureText;
  final IconData? icon;
  MyTextFormField({
    super.key,
    required this.labelText,
    this.obscureText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardAppearance: Brightness.dark,
      style: TextStyle(color: Colors.teal.shade200),
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(0, 0, 0, 0.5),
        prefixIcon: Icon(icon, color: Colors.teal.shade200),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.teal.shade200),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal.shade200, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal.shade200, width: 3),
        ),
      ),
    );
  }
}

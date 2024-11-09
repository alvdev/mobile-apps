import 'package:flutter/material.dart';
import 'package:contradefensa/config/theme/brand_colors.dart';
import 'package:contradefensa/utils/extensions.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Expanded(child: Divider(color: Colors.white)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      AppColor.black700,
                      AppColor.black700,
                      Colors.transparent
                    ],
                    stops: [0, 0.2, 0.8, 1],
                  ),
                ),
                child: Text(context.l10n.socialLoginOr.toUpperCase()),
              ),
              Expanded(child: Divider(color: Colors.white)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text('Google'),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text('Facebook'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
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
              SizedBox(width: 20),
              Text(context.l10n.socialLoginOr.toUpperCase()),
              SizedBox(width: 20),
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

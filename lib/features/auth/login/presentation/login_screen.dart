import 'package:chatting_app/core/theme/styles.dart';
import 'package:chatting_app/features/auth/login/presentation/widget/clip_path.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPathScreen(),
          Text(
            "You will get a code via sms.",
            style: TextStyles.font18DarkCyanBlueRegular,
          ),
        ],
      ),
    );
  }
}

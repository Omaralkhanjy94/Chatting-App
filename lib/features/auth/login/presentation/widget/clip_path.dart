import 'package:chatting_app/core/helper/extensions.dart';
import 'package:chatting_app/core/theme/colors.dart';
import 'package:chatting_app/features/auth/login/presentation/widget/login_and_enter_your_mobile_phone.dart';
import 'package:flutter/material.dart';

class ClipPathScreen extends StatelessWidget {
  const ClipPathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: NameClipper(),
          child: Container(
            width: context.screenWidth,
            height: context.screenHeight / 1.9,
            decoration: BoxDecoration(color: ColorsManager.lightSkyBlue),
          ),
        ),
        LoginAndEnterYourMobilePhone(),
      ],
    );
  }
}

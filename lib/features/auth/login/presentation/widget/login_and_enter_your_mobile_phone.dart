import 'package:chatting_app/core/helper/extensions.dart';
import 'package:chatting_app/core/helper/spacing.dart';
import 'package:chatting_app/core/theme/colors.dart';
import 'package:chatting_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginAndEnterYourMobilePhone extends StatelessWidget {
  const LoginAndEnterYourMobilePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: NameClipper(),
          child: Container(
            width: context.screenWidth,
            height: context.screenHeight / 2.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                colors: [ColorsManager.lightBlue, ColorsManager.gradientBlue],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: context.screenHeight / 15,
                left: context.screenWidth / 15,
                right: context.screenWidth / 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textScaler: TextScaler.linear(1.0),
                        "Login",
                        style: TextStyles.font35whiteBold,
                      ),
                      Container(
                        width: context.screenHeight / 8,
                        height: context.screenHeight / 18,
                        decoration: BoxDecoration(
                          color: ColorsManager.white,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                        child: Center(
                          child: Text(
                            textScaler: TextScaler.linear(1.0),
                            "Register",
                            style: TextStyles.font16DarkBlueSemiBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(24),
                  SizedBox(
                    width: context.screenWidth / 1.5,
                    height: context.screenHeight / 7,
                    child: Text(
                      "Enter your mobile phone",
                      style: TextStyles.font35whiteSemiBold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NameClipper extends CustomClipper<Path> {
  final double? ineToHeiht;
  double? x1;
  double? y1;

  double? y2;

  NameClipper({super.reclip, this.ineToHeiht, this.x1, this.y1, this.y2});
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / (x1 ?? 2),
      size.height + (y1 ?? 10),
      size.width,
      size.height - (y2 ?? 125),
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

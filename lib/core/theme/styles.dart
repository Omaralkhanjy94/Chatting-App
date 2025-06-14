import 'package:chatting_app/core/theme/colors.dart';
import 'package:chatting_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle font16DarkBlueSemiBold = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font35whiteBold = GoogleFonts.roboto(
    fontSize: 35.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.white,
  );
  static TextStyle font35whiteSemiBold = GoogleFonts.roboto(
    fontSize: 35.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.white,
  );
  static TextStyle font18DarkCyanBlueRegular = GoogleFonts.roboto(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkCyanBlue,
  );
}

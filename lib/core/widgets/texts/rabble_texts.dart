import 'package:rabble/config/export.dart';

class RabbleText extends Text {
  RabbleText.headerText({
    super.key,
    String? text,
    double? fontSize,
    TextAlign? textAlign,
    Color? color,
  }) : super(text!,
            textAlign: textAlign ?? TextAlign.center,
            style: RabbleTheme.themeData.textTheme.displayLarge.copyWith(fontSize: fontSize,color: color));

  RabbleText.subHeaderText({
    super.key,
    String? text,
    int? maxLines,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? overflow,
    double? letterSpacing,
    double? height,
    double? wordSpacing,
    TextDecoration? textDecoration,
  }) : super(text!,
            maxLines: maxLines,
            textAlign: textAlign ?? TextAlign.center,
            overflow: overflow ?? TextOverflow.visible,
            style: RabbleTheme.themeData.textTheme.labelSmall
                .copyWith(color: color ?? const Color(0xff000000), fontSize: fontSize ?? 14,
                fontWeight: fontWeight ?? FontWeight.normal,height: height ?? 0 ,letterSpacing: letterSpacing,wordSpacing: wordSpacing,decoration: textDecoration));
}

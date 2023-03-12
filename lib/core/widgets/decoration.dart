import 'package:rabble/config/export.dart';

class ContainerDecoration {
  static BoxDecoration boxDecoration(
      {Color? bg, Color? border, double? width = 1, double? radius}) {
    return radius != null
        ? BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: bg,
            border: Border.all(width: width!, color: border!),
          )
        : BoxDecoration(
            color: bg,
            border: Border.all(width: width!, color: border!),
          );
  }

  static BoxDecoration sideRadiusDecoration(
      {Color? bg, Color? border, double? width = 1, double? radius}) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      border: Border.all(
        color: APPColors.appGreen,
        width: 1.0,
      ),
    );
  }

  static BoxDecoration sideBorderDecoration(
      {Color? bg, Color? border, double? width = 1, double? radius}) {
    return const BoxDecoration(
      border: Border(
        left: BorderSide(
          color: APPColors.appGreen,
          width: 1.0,
        ),
        right: BorderSide(
          color: APPColors.appGreen,
          width: 1.0,
        ),
        top: BorderSide(
          color: APPColors.appGreen,
          width: 1.0,
        ),
      ),
    );
  }

  static BoxDecoration greenDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(16),
        topLeft: Radius.circular(16),
        bottomRight: Radius.circular(0),
        bottomLeft: Radius.circular(0),
      ),
      border: Border.all(
        color: APPColors.appGreen,
        width: 1,
      ),
    );
  }

  static BoxDecoration orangeDecoration() {
    return BoxDecoration(
      color: APPColors.appWhite,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(0),
        topLeft: Radius.circular(0),
        bottomRight: Radius.circular(16),
        bottomLeft: Radius.circular(16),
      ),
      border: Border.all(
        color: APPColors.appOrange,
        width: 1,
      ),
    );
  }
}

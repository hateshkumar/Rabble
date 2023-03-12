import 'package:rabble/config/export.dart';

class PagePadding extends EdgeInsets {
  const PagePadding.horizontalSymmetric(double paddingValue)
      : super.symmetric(horizontal: paddingValue);

  const PagePadding.verticalSymmetric(double paddingValue)
      : super.symmetric(vertical: paddingValue);

  const PagePadding.verticalHorizontalSymmetric(double paddingValue)
      : super.only(left: paddingValue, right: paddingValue);

  const PagePadding.general(double paddingValue)
      : super.only(right: paddingValue, left: paddingValue, top: paddingValue);

  const PagePadding.custom(
    double right,
    double left,
    double top,
    double bottom,
  ) : super.only(right: right, left: left, top: top, bottom: bottom);

  const PagePadding.all(double paddingValue) : super.all(paddingValue);

  const PagePadding.onlyLeft(double paddingValue)
      : super.only(left: paddingValue);

  const PagePadding.onlyBottom(double paddingValue)
      : super.only(bottom: paddingValue);

  const PagePadding.onlyTop(double paddingValue)
      : super.only(top: paddingValue);

  const PagePadding.onlyRight(double paddingValue)
      : super.only(right: paddingValue);
}

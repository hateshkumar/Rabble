import 'package:rabble/config/export.dart';

class BasketItemWidget extends StatelessWidget {
  final String title, qty, price;

  const BasketItemWidget(
      {super.key, required this.title, required this.qty, required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      child: Padding(
        padding: PagePadding.custom(10.w, 7.w, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                RabbleText.subHeaderText(
                  text: '${qty}x   ',
                  fontSize: 12.sp,
                  color: APPColors.appBorder,
                ),
                RabbleText.subHeaderText(
                  text: title,
                  fontSize: 12.sp,
                  color: APPColors.appBorder,
                ),
              ],
            ),
            RabbleText.subHeaderText(
              text: price,
              fontSize: 12.sp,
              color: APPColors.appBorder,
            ),
          ],
        ),
      ),
    );
  }
}

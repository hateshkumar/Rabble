import 'package:rabble/config/export.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: APPColors.appLightGrey,
          radius: 7.w,
          child: Assets.svgs.placeHolder.svg(width: 8.w, height: 4.5.h),
        ),
        SizedBox(
          width: 2.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RabbleText.subHeaderText(
              text: kTK,
              color: APPColors.appBlack,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
            SizedBox(
              height: 0.3.h,
            ),
            Row(
              children: [
                Container(
                  width: 14.w,
                  height: 3.2.h,
                  decoration: ContainerDecoration.boxDecoration(
                    bg: APPColors.appYellow,
                    border: APPColors.appYellow,
                    radius: 24,
                  ),
                  child: RabbleText.subHeaderText(
                    text: kHost,
                    color: APPColors.appBlack,
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.7,
                ),
                Row(
                  children: [
                    Assets.svgs.map.svg(width: 8.w, height: 3.0.h),
                    SizedBox(
                      width: 1.w,
                    ),
                    RabbleText.subHeaderText(
                      text: kN169JU,
                      color: APPColors.appBlue,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

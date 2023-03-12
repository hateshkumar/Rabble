import 'package:rabble/config/export.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      decoration: ContainerDecoration.boxDecoration(
          bg: APPColors.appWhite,
          border: APPColors.appWhite,
          radius: 11),
      child: Padding(
        padding: PagePadding.general(3.w),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Assets.svgs.truck
                    .svg(width: 8.w, height: 3.2.h),
                SizedBox(
                  width: 2.w,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: kNDeliver,
                          style: TextStyle(
                              color: APPColors.appTextGrey,
                              fontSize: 11.sp)),
                      TextSpan(
                          text: kDate,
                          style: TextStyle(
                            color: APPColors.appBorder,
                            fontSize: 11.sp,
                          )),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: APPColors.appBorder,
                  size: 30,
                ),
                SizedBox(
                  width: 0.5.w,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: kCD,
                          style: TextStyle(
                              color: APPColors.appTextGrey,
                              fontSize: 11.sp)),
                      TextSpan(
                          text: kAddress,
                          style: TextStyle(
                            color: APPColors.appBorder,
                            fontSize: 11.sp,
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

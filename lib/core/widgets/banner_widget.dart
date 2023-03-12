import 'package:rabble/config/export.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 28.h,
      decoration: ContainerDecoration.boxDecoration(
          bg: APPColors.bg_grey,
          border: APPColors.bg_grey,
          radius: 11),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: APPColors.appBorder,
                  size: 30,
                ),
                onPressed: () {}),
          ),
          Center(
            child: Assets.svgs.placeHolder
                .svg(width: 18.w, height: 9.h),
          )
        ],
      ),
    );
  }
}

import 'package:rabble/config/export.dart';


class Appbar extends StatelessWidget {
  final String? title;

//  Diseases in Orange
  const Appbar({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: APPColors.appWhite,
      leading: InkWell(
        onTap:(){

        },
        child: Padding(
          padding: PagePadding.onlyLeft(3.w,),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: APPColors.appBlue,
              ),
              RabbleText.subHeaderText(
                text: kBack,
                color: APPColors.appBlue,
                fontSize: 12.sp,
              ),
            ],
          ),
        ),
      ),
      leadingWidth: 20.w,
      title: RabbleText.subHeaderText(
        text: title,
        color: APPColors.appBlack,
        fontSize: 14.sp,
      ),
      centerTitle: true,
    );
  }

}

import 'package:rabble/config/export.dart';

class BasketWidget extends StatelessWidget {
  final Function callBackExpanded;

  BasketWidget({Key? key, required this.callBackExpanded}) : super(key: key);

  final StreamController<bool> expandedController =
      StreamController<bool>.broadcast();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: expandedController.stream,
        initialData: false,
        builder: (context, snapshot) {
          return Column(
            children: [
              Container(
                height: 8.h,
                decoration: ContainerDecoration.greenDecoration(),
                child: Padding(
                  padding: const PagePadding.verticalHorizontalSymmetric(10),
                  child: Row(
                    children: [
                      RabbleText.subHeaderText(
                        text: kYB,
                        fontSize: 12.sp,
                        color: APPColors.appBlack,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          RabbleText.subHeaderText(
                            text: k240,
                            fontSize: 12.sp,
                            color: APPColors.appBorder,
                          ),
                          InkWell(
                            onTap: () {
                              callBackExpanded.call(snapshot.data!);
                              expandedController.sink.add(!snapshot.data!);
                            },
                            child: Icon(
                              snapshot.data!
                                  ? Icons.keyboard_arrow_up_rounded
                                  : Icons.keyboard_arrow_down_rounded,
                              color: APPColors.appIcons,
                              size: 30,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              snapshot.data!
                  ? Container(
                      height: 15.h,
                      decoration: ContainerDecoration.boxDecoration(
                          bg: APPColors.bgBasketItem,
                          border: APPColors.appGreen),
                      child: Column(
                        children:  [
                          const BasketItemWidget(
                            qty: '2',
                            title: kPName,
                            price: ' $k75',
                          ),
                          Container(
                            height: 0.2,
                            color: APPColors.appTextGrey,
                          ),
                          const BasketItemWidget(
                            qty: '2',
                            title: kPName,
                            price: ' $k75',
                          )
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              Container(
                height: 8.h,
                decoration: BoxDecoration(
                  color: APPColors.appWhite,
                  border: Border.all(
                    color: APPColors.appLightBlue,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: PagePadding.custom(9.5.w, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RabbleText.subHeaderText(
                        text: kKateE,
                        fontSize: 12.sp,
                        color: APPColors.appBlack,
                      ),
                      RabbleText.subHeaderText(
                        text: k150,
                        fontSize: 12.sp,
                        color: APPColors.appBorder,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 8.h,
                decoration: ContainerDecoration.orangeDecoration(),
                child: Padding(
                  padding: PagePadding.custom(9.5.w, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RabbleText.subHeaderText(
                        text: kMaxB,
                        fontSize: 12.sp,
                        color: APPColors.appBlack,
                      ),
                      RabbleText.subHeaderText(
                        text: k320,
                        fontSize: 12.sp,
                        color: APPColors.appBorder,
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}

import 'package:rabble/config/export.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return CubitProvider<RabbleBaseState, HomeCubit>(
      create: (context) => HomeCubit(),
      builder: (context, state, bloc) => ToucheDetector(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(8.h),
            child: const Appbar(
              title: kAbTitle,
            ),
          ),
          backgroundColor: APPColors.grey,
          body: SafeArea(
            child: Padding(
              padding: PagePadding.general(5.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const UserWidget(),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    const BannerWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    const AddressWidget(),
                    SizedBox(
                      height: 2.h,
                    ),
                    BehaviorSubjectBuilder<bool>(
                        subject: bloc.expanded$,
                        builder: (context, snapshot) {
                          return Container(
                            width: 100.w,
                            height: !snapshot.data! ? 90.h : 75.h,
                            decoration: ContainerDecoration.boxDecoration(
                                bg: const Color(0xfff9f9fc),
                                border: APPColors.appYellow,
                                radius: 11),
                            child: Padding(
                              padding: PagePadding.general(3.w),
                              child: Column(
                                children: [
                                  Container(
                                    width: 90.w,
                                    height: 45.h,
                                    decoration:
                                        ContainerDecoration.boxDecoration(
                                            bg: APPColors.appWhite,
                                            border: APPColors.appWhite,
                                            radius: 11),
                                    child: Padding(
                                      padding: PagePadding.general(2.w),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                                  const Color(0xffB7EC21),
                                              radius: 50,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    APPColors.appYellow,
                                                radius: 45,
                                                child: RabbleText.subHeaderText(
                                                  text: k157,
                                                  color: APPColors.appBorder,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: ' $k700',
                                                      style: TextStyle(
                                                          color: APPColors
                                                              .appBorder,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11.sp)),
                                                  TextSpan(
                                                      text: ' $kTowards ',
                                                      style: TextStyle(
                                                        color:
                                                            APPColors.appBorder,
                                                        fontSize: 11.sp,
                                                      )),
                                                  TextSpan(
                                                      text: ' $k500',
                                                      style: TextStyle(
                                                          color: APPColors
                                                              .appBorder,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11.sp)),
                                                  TextSpan(
                                                      text:
                                                          '  $kMinium\n',
                                                      style: TextStyle(
                                                        color:
                                                            APPColors.appBorder,
                                                        fontSize: 12.sp,
                                                      )),
                                                ],
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const TimerWidget(
                                                  daysRemaining: 6,
                                                ),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                RabbleText.subHeaderText(
                                                    text: ' $kTo',
                                                    color: APPColors.appBorder,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.sp)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  BasketWidget(
                                    callBackExpanded: (val) {
                                      bloc.expanded$.sink.add(val);
                                    },
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: 7.5.h,
                      child: RabbleButton.tertiaryFilled(
                        child: RabbleText.subHeaderText(
                          text: kYS,
                          fontSize: 14.sp,
                          color: APPColors.appIcons,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

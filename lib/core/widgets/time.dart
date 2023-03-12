import 'package:rabble/config/export.dart';

class TimerWidget extends StatefulWidget {
  final int daysRemaining;

  const TimerWidget({super.key, required this.daysRemaining});

  @override
  CountdownSquareState createState() => CountdownSquareState();
}

class CountdownSquareState extends State<TimerWidget> {
  late Timer _timer;
  late DateTime _targetDate;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _targetDate = now.add(Duration(days: widget.daysRemaining));
    final elapsed = now.difference(DateTime(now.year, now.month, now.day));
    _targetDate = _targetDate.subtract(elapsed);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => setState(() {}));
  }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final remainingDuration = _targetDate.difference(DateTime.now());
    final daysRemaining = remainingDuration.inDays;
    final hoursRemaining = remainingDuration.inHours.remainder(24);
    final minutesRemaining = remainingDuration.inMinutes.remainder(60);
    final secondsRemaining = remainingDuration.inSeconds.remainder(60);

    return Container(
      width: 50.w,
      height: 14.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.purple],
        ),          borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RabbleText.subHeaderText(
            text: '$daysRemaining Days',
            fontSize: 15.sp,
            color: APPColors.appWhite,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,

          ),
          SizedBox(height: 1.3.h,),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: remainingDuration <= Duration.zero ? 0.0 : 1.0,
            child: Center(
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: APPColors.appWhite,
                ),
                padding: PagePadding.verticalHorizontalSymmetric(5.w),
                margin: PagePadding.verticalHorizontalSymmetric(5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Row(
                        children: [
                          RabbleText.subHeaderText(
                            text:
                            '$hoursRemaining',
                            fontSize: 13.sp,
                            color: APPColors.appBlack,
                          ),
                          RabbleText.subHeaderText(
                            text:
                            ' H',
                            fontSize: 9.sp,
                            color: APPColors.appTextGrey,
                            height: 1.7,
                          ),
                          SizedBox(width: 2.w,),
                          Container(
                            color: APPColors.appTextGrey,
                            height: 5.h,
                            width: 0.5.w,
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          RabbleText.subHeaderText(
                            text:
                            minutesRemaining.toString().padLeft(2, '0'),
                            fontSize: 13.sp,
                            color: APPColors.appBlack,
                          ),
                          RabbleText.subHeaderText(
                            text:
                            ' M',
                            fontSize: 9.sp,
                            color: APPColors.appTextGrey,
                            height: 1.7,
                          ),
                          SizedBox(width: 2.w,),
                          Container(
                            color: APPColors.appTextGrey,
                            height: 5.h,
                            width: 0.5.w,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          RabbleText.subHeaderText(
                            text:
                            secondsRemaining.toString().padLeft(2, '0'),
                            fontSize: 13.sp,
                            color: APPColors.appBlack,
                          ),
                          RabbleText.subHeaderText(
                            text:
                            ' S',
                            fontSize: 9.sp,
                            color: APPColors.appTextGrey,
                            height: 1.7,
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

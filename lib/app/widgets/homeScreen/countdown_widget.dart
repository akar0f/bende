import 'package:bende/app/themes/colors.dart';
import 'package:bende/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

class DayCountdown extends StatefulWidget {
  const DayCountdown({Key? key}) : super(key: key);

  @override
  State<DayCountdown> createState() => _DayCountdownState();
}

class _DayCountdownState extends State<DayCountdown> {
  late CountdownTimerController controller;
  int endTime = DateTime.parse('2023-07-31').millisecondsSinceEpoch;

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    print('onEnd');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Card(
        color: BendeColors.blackSea,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(BendeConstants.COUNTDOWN_TITLE.toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: CountdownTimer(
                  controller: controller,
                  widgetBuilder: (_, CurrentRemainingTime? time) {
                    if (time == null) {
                      return Text(BendeConstants.COUNTDOWN_TIMEOUT_MESSAGE,
                          style: Theme.of(context).textTheme.bodyText1);
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(BendeConstants.COUNTDOWN_LAST),
                        Text(' ${time.days} ',
                            style: Theme.of(context).textTheme.headline4),
                        const Text(BendeConstants.COUNTDOWN_DAY),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
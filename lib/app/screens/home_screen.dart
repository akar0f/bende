import 'package:bende/app/themes/colors.dart';
import 'package:bende/app/utils/constants.dart';
import 'package:bende/app/widgets/homeScreen/countdown_widget.dart';
import 'package:bende/app/widgets/homeScreen/subjects_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: BendeColors.onyx,
        elevation: 0,
        title: Text(
          BendeConstants.APPBAR_TITLE,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DayCountdown(),
            SubjectsGrid(),
          ],
        ),
      ),
    );
  }
}
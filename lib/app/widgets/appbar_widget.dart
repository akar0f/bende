import 'package:bende/app/themes/colors.dart';
import 'package:bende/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BendeAppBar extends StatelessWidget {
  const BendeAppBar(
      {Key? key,
      this.title,
      this.titleWidget,
      this.transparent = false,
      this.hasCloseButton = false,
      this.actions,
      this.closePressed})
      : super(key: key);

  final VoidCallback? closePressed;
  final Widget? titleWidget;
  final bool hasCloseButton;
  final transparent;
  final actions;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: hasCloseButton
            ? CloseButton(
                onPressed: closePressed ?? closePressed,
              )
            : null,
        centerTitle: true,
        actions: actions,
        elevation: 0,
        backgroundColor:
            transparent ? Colors.transparent : BendeColors.blackSea,
        title: getTitleWidget(context),
        systemOverlayStyle: SystemUiOverlayStyle.light);
  }

  Widget getTitleWidget(BuildContext context) {
    if (titleWidget == null) {
      return Text(title ?? '', style: Theme.of(context).textTheme.headline1);
    } else {
      return Row(
        children: [
          titleWidget!,
        ],
      );
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
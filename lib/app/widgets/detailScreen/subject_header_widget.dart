// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bende/app/themes/colors.dart';
import 'package:bende/app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class SubjectHeader extends StatelessWidget {
  const SubjectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BendeColors.cinder,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              const GradientWidget(
                opacity: 0.42,
                height: 168.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BendeAppBar(transparent: true),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                      child: Text(
                        'İslam Öncesi Türk Tarihi',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Markdown(
              data:
                  'Ortalama 1 soru çıkmaktadır. \n\n MS. 8. yy. kadar olan süreç ele alınmıştır.',
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
                  .copyWith(
                      p: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 14.0, color: BendeColors.aluminium)),
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}


class GradientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        height: height,
        child: child,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorsList(),
          ),
        ),
      ),
    );
  }

  List<Color> colorsList() => [
        BendeColors.crystalBlue,
        BendeColors.transparent,
      ];

  final height;
  final Color? primaryColor;
  final opacity;
  final child;

   const GradientWidget(
      {super.key, this.height = 350.0, this.primaryColor, this.opacity = 1.0, this.child});
}

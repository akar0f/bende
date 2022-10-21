import 'package:bende/app/json/json_item.dart';
import 'package:bende/app/models/reports_data_model.dart';
import 'package:bende/app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:bende/app/json/asset_reader_mixin.dart';


class HeadingsList extends StatefulWidget {
  const HeadingsList({super.key});

  @override
  State<HeadingsList> createState() => _HeadingsListState();
}

class _HeadingsListState extends State<HeadingsList> with AssertMixin {
  ReportData? services;

  @override
  void initState() {
    super.initState();

    load();
  }

  Future<void> load() async {
    final data = await readData(JsonItems.largeJsonPath);

    if (data == null) return;

    setState(() {
      services = ReportData.fromJson(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    int headingLenght = services?.subjects?[0].headings?.length ?? 0;
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    padding: const EdgeInsets.symmetric(vertical: 8),
    children: List.generate(headingLenght, (index) {
      return InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Container(
                  color: BendeColors.blackSea,
                  child:  SizedBox(
                    height: 55,
                    width: 55,
                    child: Center(child: Text((index+1).toString(),style: Theme.of(context).textTheme.headline4,),),
                  ),
                ),
              ),
              Container(width: 12),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      services?.subjects?[0].headings?[index].headingName ?? '',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Container(height: 4),
                    Text(
                      'Explanation',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    })
    );
  }
}
import 'package:bende/app/json/json_item.dart';
import 'package:bende/app/json/asset_reader_mixin.dart';
import 'package:bende/app/models/reports_data_model.dart';
import 'package:bende/app/screens/detail_screen.dart';
import 'package:bende/app/themes/colors.dart';
import 'package:flutter/material.dart';

class SubjectsGrid extends StatefulWidget {
  const SubjectsGrid({super.key});

  @override
  State<SubjectsGrid> createState() => _SubjectsGridState();
}

class _SubjectsGridState extends State<SubjectsGrid> with AssertMixin {
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
    int subjectsLenght = services?.subjects?.length ?? 0;
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0),
        scrollDirection: Axis.vertical,
        childAspectRatio: 1,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
          subjectsLenght,
          (index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              clipBehavior: Clip.antiAlias,
              color: BendeColors.blackSea,
              child: InkWell(
                splashColor: BendeColors.aluminium,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return DetailScreen();
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      services?.subjects?[index].subjectTitle ?? '',
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
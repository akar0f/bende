import 'package:bende/app/widgets/detailScreen/subject_header_widget.dart';
import 'package:bende/app/widgets/detailScreen/heading_list_widget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SubjectHeader(),
            HeadingsList(),
          ],
        ),
      ),
    );
  }
}

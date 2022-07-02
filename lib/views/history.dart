import 'package:evy_internship/data/mock.dart';
import 'package:evy_internship/data/models/history_entity.dart';
import 'package:evy_internship/helpers/theme_colors.dart';
import 'package:evy_internship/views/widgets/history_card.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: Theme.of(context).textTheme.headlineSmall,
          title:  Text("Charging History"),
        ),
        backgroundColor: ThemeColors.background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return HistoryCard(historyEntity:MockData.data[index]);
                },
                itemCount: MockData.data.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 12,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



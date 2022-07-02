import 'package:evy_internship/data/models/history_entity.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final HistoryEntity historyEntity;
  const HistoryCard({
    Key? key,
    required this.historyEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            historyEntity.id,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            historyEntity.place,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            height: 4,
          ),
          historyEntity.date == null
              ? SizedBox.shrink()
              : Text(
                  historyEntity.date ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                color: historyEntity.primaryColor,
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  historyEntity.icon,
                  color: historyEntity.textColor,
                ),
                SizedBox(width: 4,),
                Text(historyEntity.status,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: historyEntity.textColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gdsc_timer/pages/statics/statics.dart';

import '../../shared/component/chart.dart';
import 'list-ranking.dart';

class WeeklyStaticsPage extends StatefulWidget {
  WeeklyStaticsPage({Key? key}) : super(key: key);

  var data = [
    ChartData(label: "A", first: 8.0, second: 40.0, third: 35.0),
    ChartData(label: "B", first: 8.0, second: 40.0, third: 35.0),
    ChartData(label: "C", first: 4, second: 20, third: 15),
    ChartData(label: "D", first: 5, second: 25, third: 20),
    ChartData(label: "E", first: 6, second: 30, third: 25),
    ChartData(label: "F", first: 2, second: 10, third: 5),
    ChartData(label: "G", first: 7, second: 35, third: 30),
  ];

  var ranking = [
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
    ListRankingItem(emoji: "💯", time: "0:00"),
  ];

  @override
  _WeeklyStaticsPageState createState() => _WeeklyStaticsPageState();
}

class _WeeklyStaticsPageState extends State<WeeklyStaticsPage> {
  @override
  Widget build(BuildContext context) {
    return Statics(
      isLoading: false,
      data: widget.data,
      listRankingTitle: "Weekly Ranking",
      ranking: widget.ranking,
      pageCount: 3,
      pageTitleRenderer: (index) => "$index Week",
      onChangePage: (index) {},
      skeletonChartBarCount: 7,
    );
  }
}

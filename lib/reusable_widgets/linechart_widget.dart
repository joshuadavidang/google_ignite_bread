import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_ignite_app/data/bmi_data.dart';

class LineChartWidget extends StatelessWidget {
  final List<BmiData> points;

  const LineChartWidget(this.points, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              color: Colors.deepOrangeAccent,
              spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
              isCurved: false,
              curveSmoothness: .5,
              dotData: FlDotData(
                show: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

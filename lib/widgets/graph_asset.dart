import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:venon_flutter_test/customs/chart_data.dart';

class GraphAsset extends StatefulWidget {
  GraphAsset({Key? key}) : super(key: key);
  @override
  State<GraphAsset> createState() => _GraphAssetState();
}

class _GraphAssetState extends State<GraphAsset> {
  @override
  List<ChartData> chartData = [
    ChartData('10', 30, 39),
    ChartData('11', 46, 45),
    ChartData('12', 29, 19),
    ChartData('13', 36, 40),
    ChartData('14', 48, 40),
    ChartData('15', 20, 23),
    ChartData('16', 30, 35),
    ChartData('17', 20, 45),
  ];

  Widget build(BuildContext context) {
    TooltipBehavior _tooltipBehavior = TooltipBehavior(
      enable: true,
      color: Theme.of(context).backgroundColor,
      borderColor: Theme.of(context).primaryColorLight,
      textStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: Theme.of(context).primaryColorDark,
      ),
    );
    var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
          width: size.width,
          child: SfCartesianChart(
              tooltipBehavior: _tooltipBehavior,
              plotAreaBorderWidth: 0,
              primaryXAxis: CategoryAxis(
                  majorGridLines: MajorGridLines(width: 0),
                  majorTickLines: MajorTickLines(width: 0),
                  axisLine: AxisLine(
                    color: Colors.transparent,
                    width: 0,
                  )),
              primaryYAxis: NumericAxis(
                isVisible: false,
                majorGridLines: MajorGridLines(width: 0),
              ),
              palette: <Color>[
                Color(0xFF44969E),
                Color(0xFFFFBD00).withOpacity(0.25),
              ],
              series: <CartesianSeries>[
                ColumnSeries<ChartData, String>(
                  borderRadius: BorderRadius.only(
                    // The top left and bottom right corners radii are changed to make them
                    // as rounded corners.
                    topLeft: Radius.circular(6.5),
                    topRight: Radius.circular(6.5),
                  ),
                  name: 'Views',
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  enableTooltip: true,
                  width: 0.7, // Width of the columns
                  spacing: 0.7,
                ),
                ColumnSeries<ChartData, String>(
                  borderRadius: BorderRadius.only(
                    // The top left and bottom right corners radii are changed to make them
                    // as rounded corners.
                    topLeft: Radius.circular(6.5),
                    topRight: Radius.circular(6.5),
                  ),
                  name: 'Applications',
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y1,
                  enableTooltip: true,
                  width: 0.7, // Width of the columns
                  spacing: 0.7,
                )
              ])),
    );
  }
}

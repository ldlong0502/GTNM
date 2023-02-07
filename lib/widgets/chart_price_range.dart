import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:travel4/constants.dart';

class ChartPriceRange extends StatefulWidget {
  const ChartPriceRange({super.key});

  @override
  State<ChartPriceRange> createState() => _ChartPriceRangeState();
}

class _ChartPriceRangeState extends State<ChartPriceRange> {
  final double _min = 10;

  final double _max = 130;

 SfRangeValues _values = const SfRangeValues(10.0, 130.0);
  final List<Data> chartData = <Data>[

    Data(x: 10, y: 10),
    Data(x: 20, y: 40),
    Data(x: 30, y: 22),
    Data(x: 40, y: 20),
    Data(x: 50, y: 45),
    Data(x: 60, y: 70),
    Data(x: 70, y: 120),
    Data(x: 80, y: 125),
    Data(x: 90, y: 56),
    Data(x: 100, y: 34),
    Data(x: 110, y: 40),
    Data(x: 120, y: 40),
    Data(x: 130, y: 20),
    Data(x: 140, y: 5),
    Data(x: 150, y:10),
  ];
  // RangeController _rangeController = RangeController(start: 0, end: 0);

  // @override
  // void initState() {
  //   super.initState();
  //   _rangeController = RangeController(start: _values.start, end: _values.end);
  // }

  // @override
  // void dispose() {
  //   _rangeController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.transparent,
            body:  Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Min: ${(_values.start as double).toInt().toDouble()}\$ - Max: ${(_values.end as double).toInt().toDouble()}\$',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ),
                  FittedBox(
                    child: SfRangeSelectorTheme(
                      data: SfRangeSelectorThemeData(
                        thumbColor: Colors.white,
                        thumbStrokeColor: Colors.black,
                        thumbStrokeWidth: 1,
                        activeTrackColor: Colors.red,
                        inactiveTrackColor: Colors.red[100],
                      ),
                      child: SfRangeSelector(
                        min: _min,
                        max: _max,
                        onChanged: (value) {
                          setState(() {
                            _values = value;
                          });
                        },
                     
                        showTicks: true,
                        initialValues: _values,
                        child: SizedBox(
                          height: 130,
                          child: SfCartesianChart(
                            margin: const EdgeInsets.all(0),
                            primaryXAxis: NumericAxis(
                              minimum: _min,
                              maximum: _max,
                              isVisible: false,
                            ),
                            primaryYAxis: NumericAxis(isVisible: false),
                            plotAreaBorderWidth: 0,
                            series: <ColumnSeries<Data, double>>[
                              ColumnSeries<Data, double>(
                                  color: ColorConstants.bottomBarItemPrimary,
                                  dataSource: chartData,
                                  xValueMapper: (Data sales, int index) => sales.x,
                                  yValueMapper: (Data sales, int index) => sales.y)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}

class Data {
  Data({required this.x, required this.y});
  final double x;
  final double y;
}

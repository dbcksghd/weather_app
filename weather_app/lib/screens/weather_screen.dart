import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.parseWeatherData});
  final parseWeatherData;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  String? cityName;
  int? temp;

  @override
  void initState() {
    super.initState();
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData){
    double temp2 = weatherData['main']['temp'];
    temp = temp2.round(); //반올림
    cityName = weatherData['name'];

    print(cityName);
    print(temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$cityName',
                style: TextStyle(
                    fontSize: 30.0
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '$temp',
                style: TextStyle(
                    fontSize: 30.0
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

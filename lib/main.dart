import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:untitled/pages/data.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: WeatherApp(),
     home: DataFromApi(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
              child: IconButton(
            icon: Icon(Icons.menu, size: 30),
            onPressed: () => print('Menu Click'),
          )),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/night.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'Marrakech',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '06/11/2021',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '24\u2103',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 85,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.nightlight_round,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Night',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white30,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Column(
                            children: [
                              CircularPercentIndicator(
                                  radius: 60.0,
                                  lineWidth: 5.0,
                                  percent: 1.0,
                                  center: new Text(
                                    "100%",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  progressColor: Colors.blueGrey),
                              SizedBox(height: 10),
                              Text(
                                'Rain',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircularPercentIndicator(
                                  radius: 60.0,
                                  lineWidth: 5.0,
                                  percent: 0.2,
                                  center: new Text(
                                     "20%",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  progressColor: Colors.blueGrey),
                              SizedBox(height: 10),
                              Text(
                                'Wind',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,

                                ),
                              ),

                            ],
                          ),
                          Column(
                            children: [
                              CircularPercentIndicator(
                                  radius: 60.0,
                                  lineWidth: 5.0,
                                  percent: 0.5,
                                  center: new Text(
                                    "50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  progressColor: Colors.blueGrey),
                              SizedBox(height: 10),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
class Temperature{
  final String CurrentHumidity,temperature;
  Temperature(this.CurrentHumidity,this.temperature);
}
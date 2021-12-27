import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataFromApi(),
    );
  }
}

class DataFromApi extends StatefulWidget {

  @override
  _DataFromApiState createState() => _DataFromApiState();


}
class _DataFromApiState extends State<DataFromApi>{
  getTemperatureData() async{

var response= await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=33.99825045104792&lon=-6.853202483543013&appid=a7e8689c16bddca198ae1d762f5049cd'));
var jsonData= json.decode(response.body);
Temperature temperature = Temperature.fromJson(jsonData);
print(temperature);

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
title: Text('Data'),
     ),
     body: Center(
       child:ElevatedButton(onPressed: () {
         getTemperatureData();
       },
       child: Text('clickme'),)
     )
     );
  }

}
class Temperature {
  Coord coord;
  List<Weather> weathers;
  String base;
  Main main;
  String visibility;
  Wind wind;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  Temperature(
      {required this.coord,
        required this.weathers, required this.base, required this.main, required this.visibility, required this.wind, required this.clouds,
        required this.dt, required this.sys, required this.timezone, required this.id, required this.name, required this.cod});


  factory Temperature.fromJson(Map<String, dynamic> parsedJson){
    var list = parsedJson['weathers'] as List;
    List<Weather> weathersList = list.map((i) => Weather.fromJson(i)).toList();
        return Temperature(
      coord: Coord.fromJson(parsedJson['coord']),
      weathers:weathersList,
    base: parsedJson['base'],
    main: Main.fromJson(parsedJson['main']),
    visibility: parsedJson['visibility'],
    wind:Wind.fromJson(parsedJson['wind']),
    clouds:Clouds.fromJson(parsedJson['clouds']),
    dt:parsedJson['dt'],
    sys:Sys.fromJson(parsedJson['sys']),
    timezone:parsedJson['timezone'],
    id:parsedJson['id'],
    name:parsedJson['name'],
    cod:parsedJson['cod'],
    );

  }
}
class Coord{

  Double lon;
  Double lat;

  Coord({
    required this.lon,
    required this.lat
  });
  factory Coord.fromJson(Map<String, dynamic> json){
    return Coord(
        lon: json['lon'],
        lat : json['lat']
    );
  }
}

class Main{

  Double temp;
  Double feels_like;
  Double temp_min;
  Double temp_max;
  int pressure;
  int humdity;

  Main(
      {
    required this.temp,    required this.feels_like,
    required this.temp_min,
   required this.temp_max,
    required this.pressure,
   required this.humdity,
  }
  );

  factory Main.fromJson(Map<String, dynamic> json){
    return Main(
        temp: json['temp'],
        feels_like: json['feels_like'],
        temp_min : json['temp_min'],
      temp_max : json['temp_max'],
      pressure : json['pressure'],
      humdity : json['humidity'],
    );
  }
}



class Weather{
  final int id;
  final String main;
  final String description;
  final String icon;
Weather({
    required this.id,
  required this.main,
  required this.description,
  required this.icon
});

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      id: json['id'],
      main: json['main'],
      description : json['description'],
      icon : json['icon'],

    );
  }
}

class Wind{

  Double speed;
  int deg;
  Wind({
    required this.speed, required this.deg
  });

  factory Wind.fromJson(Map<String, dynamic> json){
    return Wind(
      speed: json['speed'],
      deg: json['deg'],

    );
  }
}

class Sys{
int type;
int id;
String country;
int sunrise;
int sunset;
Sys({
  required this.type,
  required this.id,
  required this.country,
  required this.sunrise,
  required this.sunset
});

factory Sys.fromJson(Map<String, dynamic> json){
  return Sys(
    type: json['type'],
    id: json['id'],
    country : json['country'],
    sunrise : json['sunrise'],
    sunset : json['sunset'],
  );
}
}

class Clouds {
  int all;

  Clouds({
    required this.all
  });
  factory Clouds.fromJson(Map<String, dynamic> json){
    return Clouds(
      all: json['all'],

    );
  }
}
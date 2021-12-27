

import 'package:flutter/material.dart';
import 'package:untitled/controllers/temperature_controller.dart';
import 'package:untitled/models/temperature_model.dart';


class DataFromApi extends StatefulWidget {

  @override
  _DataFromApiState createState() => _DataFromApiState();


}
class _DataFromApiState extends State<DataFromApi>{
  final TemperatureController _temperatureController = TemperatureController();
  List<TemperatureModel> listTemperatues = [];
 


  @override
  Widget build(BuildContext context) {
    // listTemperatues = _temperatureController.fetchTemperatures() as List<TemperatureModel>;
   return Scaffold(
     appBar: AppBar(
title: Text('Data'),
     ),
     body: Center(
       child:ElevatedButton(onPressed: () {
         
        //  for(var temperature in listTemperatues){
        //    print('/////////////////////////////////////////////////////////////////');
        //   print(temperature);
        //  print('/////////////////////////////////////////////////////////////////');
        //  }
         print('/////////////////////////////////////////////////////////////////');
          print(_temperatureController.fetchTemperatures());
         print('/////////////////////////////////////////////////////////////////');
        
                },
       child: Text('clickme'),)
     )
     );
  }

}
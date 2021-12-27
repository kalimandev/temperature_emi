import 'package:untitled/models/temperature_model.dart';
import 'package:untitled/services/api_service.dart';

class TemperatureController {
  List<TemperatureModel> temperatures = [];
  
   // ignore: non_constant_identifier_names
   Future<List<TemperatureModel>?> fetchTemperatures() async {
    try{
     
     return await APIService.fetchTemperature();
    }
    finally{
        print('/////////////////////// yes it\'s work ////////////////////////////');
    }
  }
}
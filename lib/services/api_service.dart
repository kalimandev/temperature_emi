import 'package:http/http.dart' as http;
import 'package:untitled/config/config.dart';
import 'package:untitled/models/temperature_model.dart';
class APIService{
    static var client = http.Client();

  static Future<List<TemperatureModel>?> fetchTemperature() async {
    var response = await client.get(Uri.parse(Config.apiUrl));
    if(response.statusCode == 200){
      var jsonString = response.body;
      return tempertureFromJson(jsonString);
    }
    else{
      print('////////////////////////////////: liste vide //////////////////////////////');
    
    }
  }
}
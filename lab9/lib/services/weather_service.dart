import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_data.dart';
import '../utils/constants.dart';

class WeatherService {
  Future<WeatherData> getWeather(String city) async {
    final response = await http.get(
      Uri.parse(
        '${ApiConstants.baseUrl}?q=$city&appid=${ApiConstants.apiKey}&units=metric',
      ),
    );

    if (response.statusCode != 200) {
      if (response.statusCode == 404) {
        throw Exception('City not found. Please check the spelling or try another city.');
      } else if (response.statusCode == 401) {
        throw Exception('Invalid API key. Please check your configuration.');
      } else {
        throw Exception('HTTP error! status: ${response.statusCode}');
      }
    }

    final data = jsonDecode(response.body);
    return WeatherData.fromJson(data);
  }
}
import 'dart:convert';

import 'package:http/http.dart' as http;

class GetWeather {
  var baseUrl = "https://api.weatherapi.com";
  var token = "99bc6dab5acd45a78a2214616230204";
  var city = "Rasht";

  Future getForeCast(String city) async {
    var response = await http.get(
      headers: {
        'content-type': 'application/json',
        'Access-Control-Allow-Origin': "*",
        "Accept": "*/*"
      },
      Uri.parse(
        "$baseUrl/v1/forecast.json?key=$token&q=$city&days=7&aqi=no&alerts=no",
      ),
    );
    if (response.statusCode == 200) {
      return WeatherFilter.fromJson(jsonDecode(response.body));
    } else {
      return "404";
    }
  }
}

class WeatherFilter {
  final String cityname;
  final String region;
  final String country;
  final String localtime;
  final Map current;
  final Map forecast;
  final List hour_forecast;

  WeatherFilter({
    this.cityname = "Loading ...",
    this.region = "Loading ...",
    this.country = "Loading ...",
    this.localtime = "Loading ...",
    this.current = const {
      "temp_c": 0,
      "is_day": 1,
      "condition-text": "Loading ...",
      "condition-icon": 0,
      "condition-code": 0,
      "wind_mph": 0,
      "pressure_mb": 0,
      "humidity": 0,
      "feelslike_c": 0,
      "uv": 0,
    },
    this.forecast = const {
      "day-0": {
        "date": "Loading ...",
        "maxtemp_c": "0",
        "mintemp_c": "0",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
      "day-1": {
        "date": "Loading ...",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
      "day-2": {
        "date": "Loading ...",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
      "day-3": {
        "date": "Loading ...",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
      "day-4": {
        "date": "Loading ...",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
      "day-5": {
        "date": "Loading ...",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
      "day-6": {
        "date": "Loading ...",
        "daily_chance_of_rain": "0",
        "avgtemp_c": "0",
        "condition-code": 0
      },
    },
    this.hour_forecast = const [
      [
        {
          "is_day": 1,
          "condition": {"code": 0},
          "temp_c": 0,
          "chance_of_rain": 0,
        }
      ],
    ],
  });

  factory WeatherFilter.fromJson(Map<String, dynamic> json) {
    return WeatherFilter(
      cityname: json['location']['name'],
      region: json['location']['region'],
      country: json['location']['country'],
      localtime: json['location']['localtime'],
      current: {
        "temp_c": json['current']['temp_c'],
        "is_day": json['current']['is_day'],
        "condition-text": json['current']['condition']["text"],
        "condition-icon": json['current']['condition']["icon"],
        "condition-code": json['current']['condition']["code"],
        "wind_mph": json['current']['wind_mph'],
        "pressure_mb": json['current']['pressure_mb'],
        "humidity": json['current']['humidity'],
        "feelslike_c": json['current']['feelslike_c'],
        "uv": json['current']['uv'],
      },
      forecast: {
        "day-0": {
          "date": json["forecast"]["forecastday"][0]["date"],
          "maxtemp_c": json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
          "mintemp_c": json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
          "avgtemp_c": json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
          "daily_chance_of_rain": json["forecast"]["forecastday"][0]["day"]
              ["daily_chance_of_rain"],
          "condition-code": json["forecast"]["forecastday"][0]["day"]
              ["condition"]["code"],
        },
        "day-1": {
          "date": json["forecast"]["forecastday"][1]["date"],
          "daily_chance_of_rain": json["forecast"]["forecastday"][1]["day"]
              ["daily_chance_of_rain"],
          "avgtemp_c": json["forecast"]["forecastday"][1]["day"]["avgtemp_c"],
          "condition-code": json["forecast"]["forecastday"][1]["day"]
              ["condition"]["code"],
        },
        "day-2": {
          "date": json["forecast"]["forecastday"][2]["date"],
          "daily_chance_of_rain": json["forecast"]["forecastday"][2]["day"]
              ["daily_chance_of_rain"],
          "avgtemp_c": json["forecast"]["forecastday"][2]["day"]["avgtemp_c"],
          "condition-code": json["forecast"]["forecastday"][2]["day"]
              ["condition"]["code"],
        },
        // Api Limited.
        // "day-3": {
        //   "date": json["forecast"]["forecastday"][3]["date"],
        //   "daily_chance_of_rain": json["forecast"]["forecastday"][3]["day"]
        //       ["daily_chance_of_rain"],
        //   "avgtemp_c": json["forecast"]["forecastday"][3]["day"]["avgtemp_c"],
        //   "condition-code": json["forecast"]["forecastday"][3]["day"]
        //       ["condition"]["code"],
        // },
        // "day-4": {
        //   "date": json["forecast"]["forecastday"][4]["date"],
        //   "daily_chance_of_rain": json["forecast"]["forecastday"][4]["day"]
        //       ["daily_chance_of_rain"],
        //   "avgtemp_c": json["forecast"]["forecastday"][4]["day"]["avgtemp_c"],
        //   "condition-code": json["forecast"]["forecastday"][4]["day"]
        //       ["condition"]["code"],
        // },
        // "day-5": {
        //   "date": json["forecast"]["forecastday"][5]["date"],
        //   "daily_chance_of_rain": json["forecast"]["forecastday"][5]["day"]
        //       ["daily_chance_of_rain"],
        //   "avgtemp_c": json["forecast"]["forecastday"][5]["day"]["avgtemp_c"],
        //   "condition-code": json["forecast"]["forecastday"][5]["day"]
        //       ["condition"]["code"],
        // },
        // "day-6": {
        //   "date": json["forecast"]["forecastday"][6]["date"],
        //   "daily_chance_of_rain": json["forecast"]["forecastday"][6]["day"]
        //       ["daily_chance_of_rain"],
        //   "avgtemp_c": json["forecast"]["forecastday"][6]["day"]["avgtemp_c"],
        //   "condition-code": json["forecast"]["forecastday"][6]["day"]
        //       ["condition"]["code"],
        // },
      },
      hour_forecast: [
        json["forecast"]["forecastday"][0]["hour"],
      ],
    );
  }
}

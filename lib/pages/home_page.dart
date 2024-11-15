import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weatherapp/api/api.dart';
import 'package:weatherapp/widgets/appbar_widget.dart';
import 'package:weatherapp/widgets/custom_container.dart';
import 'package:weatherapp/widgets/date_widget.dart';
import 'package:weatherapp/widgets/header_widget.dart';
import 'package:weatherapp/widgets/hour_widget.dart';
import 'package:weatherapp/widgets/icons_widget.dart';

import '404_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetWeather weather = GetWeather();
  WeatherFilter weatherfilter = WeatherFilter();
  TextEditingController controller = TextEditingController();

  GetDate getdate = GetDate();
  bool isValidName = true;

  void getWeather(String city) async {
    weather.getForeCast(city).then((value) {
      if (value == "404") {
        isValidName = false;
      } else {
        isValidName = true;
        weatherfilter = value;
        controller.clear();
        setState(() {});
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getWeather("Rasht");
  }

  @override
  Widget build(BuildContext context) {
    var sWidth = MediaQuery.of(context).size.width;
    var sHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color(0xff11113A),
          body: Column(
            children: [
              // appBarWidget(sWidth, context),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomContainer(
                        height: 50,
                        width: 1,
                        border: 25,
                        child: TextField(
                          controller: controller,
                          onSubmitted: (value) {
                            getWeather(value);
                            FocusScope.of(context).unfocus();
                          },
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffC0BFCB),
                            fontSize: sWidth * 0.05,
                            shadows: const [
                              Shadow(
                                color: Color(0xff1D1D44),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            hintText: "Search Here !",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffC0BFCB).withOpacity(0.4),
                              fontSize: sWidth * 0.05,
                              shadows: const [
                                Shadow(
                                  color: Color(0xff1D1D44),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          cursorColor: Colors.white70,
                          cursorWidth: 1.5,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        getWeather(controller.text);
                        FocusScope.of(context).unfocus();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: CustomContainer(
                          width: 50,
                          height: 50,
                          border: 25,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 12.0, left: 10, bottom: 4),
                            child: SvgPicture.asset("assets/images/search.svg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              isValidName
                  ? Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            headerWidget(sWidth, weatherfilter),
                            SizedBox(
                              width: sWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          color: Colors.white10,
                                          offset: Offset(1, 1),
                                          blurRadius: 6,
                                        ),
                                      ],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffD2D1DB)),
                                ),
                              ),
                            ),
                            weatherToday(sWidth),
                            const SizedBox(
                              height: 20,
                            ),
                            weatherForecast(sWidth),
                          ],
                        ),
                      ),
                    )
                  : pageNotFound(sWidth, sHeight)
            ],
          ),
        ),
      ),
    );
  }

  Widget weatherForecast(double sWidth) {
    return CustomContainer(
      width: sWidth * 0.9,
      height: 265,
      border: 12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 2.5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      getdate.getDayForeCast(index - 1),
                      style: const TextStyle(
                        shadows: [
                          Shadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD2D1DB),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, right: 4),
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: SvgPicture.asset(
                        "assets/images/rain-drop.svg",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "${weatherfilter.forecast["day-$index"]["daily_chance_of_rain"]} %",
                        style: const TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              offset: Offset(2, 2),
                              blurRadius: 6,
                            ),
                          ],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffD2D1DB),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: SizedBox(
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Image.asset(
                          getIcons().getImageID(
                            weatherfilter.forecast["day-$index"]
                                ["condition-code"],
                            1,
                          ),
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${weatherfilter.forecast["day-$index"]["avgtemp_c"]} ",
                            style: TextStyle(
                              shadows: const [
                                Shadow(
                                  color: Colors.black38,
                                  offset: Offset(2, 2),
                                  blurRadius: 6,
                                ),
                              ],
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffFEFEFE).withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "°C",
                            style: TextStyle(
                              shadows: const [
                                Shadow(
                                  color: Colors.black38,
                                  offset: Offset(2, 2),
                                  blurRadius: 6,
                                ),
                              ],
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffFFA500).withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget weatherToday(double sWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        width: sWidth,
        height: 125,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: weatherfilter.hour_forecast[0].length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      CreateHour().hour(index,
                          weatherfilter.hour_forecast[0][index]["is_day"]),
                      style: TextStyle(
                          shadows: const [
                            Shadow(
                              color: Colors.white10,
                              offset: Offset(1, 1),
                              blurRadius: 6,
                            ),
                          ],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffD2D1DB).withOpacity(0.5)),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8, left: 8),
                      child: Image.asset(
                        getIcons().getImageID(
                          weatherfilter.hour_forecast[0][index]["condition"]
                              ["code"],
                          weatherfilter.hour_forecast[0][index]["is_day"],
                        ),
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          "${weatherfilter.hour_forecast[0][index]["temp_c"]} ",
                          style: TextStyle(
                            shadows: const [
                              Shadow(
                                color: Colors.white10,
                                offset: Offset(1, 1),
                                blurRadius: 6,
                              ),
                            ],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffFEFEFE).withOpacity(0.5),
                          ),
                        ),
                        Text(
                          "°C",
                          style: TextStyle(
                            shadows: const [
                              Shadow(
                                color: Colors.white10,
                                offset: Offset(1, 1),
                                blurRadius: 6,
                              ),
                            ],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffFFA500).withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 13,
                          height: 13,
                          child: SvgPicture.asset(
                            "assets/images/rain-drop.svg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            "${weatherfilter.hour_forecast[0][index]["chance_of_rain"]} %",
                            style: TextStyle(
                                shadows: const [
                                  Shadow(
                                    color: Colors.white10,
                                    offset: Offset(1, 1),
                                    blurRadius: 6,
                                  ),
                                ],
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color:
                                    const Color(0xffD2D1DB).withOpacity(0.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

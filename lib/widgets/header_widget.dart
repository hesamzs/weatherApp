import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weatherapp/api/api.dart';
import 'package:weatherapp/widgets/custom_container.dart';
import 'package:weatherapp/widgets/date_widget.dart';
import 'package:weatherapp/widgets/icons_widget.dart';

Widget headerWidget(double sWidth, WeatherFilter weatherFilter) {
  GetDate getDate = GetDate();

  return CustomContainer(
    width: sWidth,
    height: 210,
    border: 0,
    child: Row(
      children: [
        SizedBox(
          width: sWidth * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${getDate.getDayShort(0)},${getDate.getDayNum()} ${getDate.getMonth()} ",
                      style: TextStyle(
                        shadows: const [
                          Shadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffD2D1DB).withOpacity(0.5),
                      ),
                    ),
                    Text(
                      "${weatherFilter.cityname} - ${weatherFilter.country} ",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        shadows: const [
                          Shadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffD2D1DB).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "${weatherFilter.current["temp_c"]} ",
                      style: const TextStyle(shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 6,
                        ),
                      ], fontSize: 45, fontWeight: FontWeight.bold, color: Color(0xffFEFEFE)),
                    ),
                    const Text(
                      "°C",
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            offset: Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFA500),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                      height: 12,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(3.1415926535897932 / 2),
                        child: SvgPicture.asset(
                          "assets/images/arrow.svg",
                          color: const Color(0xff7D7C94),
                          width: 12,
                          height: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        weatherFilter.forecast["day-0"]["mintemp_c"].toString(),
                        style: TextStyle(
                          shadows: const [
                            Shadow(
                              color: Colors.black38,
                              offset: Offset(2, 2),
                              blurRadius: 6,
                            ),
                          ],
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffD2D1DB).withOpacity(0.5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        "°C",
                        style: TextStyle(
                          shadows: const [
                            Shadow(
                              color: Colors.black38,
                              offset: Offset(2, 2),
                              blurRadius: 6,
                            ),
                          ],
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFA500).withOpacity(0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                      height: 12,
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(math.pi * 1.5),
                        child: SvgPicture.asset(
                          "assets/images/arrow.svg",
                          color: const Color(0xff7D7C94),
                          width: 12,
                          height: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        weatherFilter.forecast["day-0"]["maxtemp_c"].toString(),
                        style: TextStyle(
                          shadows: const [
                            Shadow(
                              color: Colors.black38,
                              offset: Offset(2, 2),
                              blurRadius: 6,
                            ),
                          ],
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffD2D1DB).withOpacity(0.5),
                        ),
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
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffFFA500).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "${weatherFilter.current["condition-text"]} ",
                  style: TextStyle(shadows: const [
                    Shadow(
                      color: Colors.black38,
                      offset: Offset(2, 2),
                      blurRadius: 6,
                    ),
                  ], fontSize: weatherFilter.current["condition-text"].length > 16 ? 16 : 22, fontWeight: FontWeight.bold, color: const Color(0xffFEFEFE)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Feelings like ",
                      style: TextStyle(
                        shadows: const [
                          Shadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffFEFEFE).withOpacity(0.5),
                      ),
                    ),
                    Text(
                      "${weatherFilter.current["feelslike_c"]} ",
                      style: TextStyle(
                        shadows: const [
                          Shadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 6,
                          ),
                        ],
                        fontSize: 10,
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
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffFFA500).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset(
              getIcons().getImageID(weatherFilter.current["condition-code"], weatherFilter.current["is_day"]),
              width: 128,
              height: 128,
            ),
          ),
        ),
      ],
    ),
  );
}

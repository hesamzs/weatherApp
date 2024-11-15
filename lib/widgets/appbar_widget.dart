// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:weatherapp/widgets/custom_container.dart';

// Widget appBarWidget(double sWidth,BuildContext context) {
//   TextEditingController controller = TextEditingController();

//   return Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: Row(
//       children: [
//         Expanded(
//           child: CustomContainer(
//             height: 50,
//             width: 1,
//             border: 25,
//             child: TextField(
//                 controller: controller,
//                 onSubmitted: (value) {
//                   // getWeather(value);
//                   FocusScope.of(context).unfocus();
//                 },
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: const Color(0xffC0BFCB),
//                   fontSize: sWidth * 0.05,
//                   shadows: const [
//                     Shadow(
//                       color: Color(0xff1D1D44),
//                       offset: Offset(0, 3),
//                       blurRadius: 6,
//                     ),
//                   ],
//                 ),
//                 textCapitalization: TextCapitalization.words,
//                 decoration: InputDecoration(
//                   hintText: "Search Here !",
//                   hintStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: const Color(0xffC0BFCB).withOpacity(0.4),
//                     fontSize: sWidth * 0.05,
//                     shadows: const [
//                       Shadow(
//                         color: Color(0xff1D1D44),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                   border: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//                 cursorColor: Colors.white70,
//                 cursorWidth: 1.5),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             // getWeather(controller.text);
//             FocusScope.of(context).unfocus();
//           },
//           child: Padding(
//             padding: const EdgeInsets.only(left: 10.0),
//             child: CustomContainer(
//               width: 50,
//               height: 50,
//               border: 25,
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 12.0, left: 10, bottom: 4),
//                 child: SvgPicture.asset("assets/images/search.svg"),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

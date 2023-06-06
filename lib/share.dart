// import 'package:alemeno/message.dart';
// import 'package:flutter/material.dart';

// class share extends StatelessWidget {
//   const share({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           leading: Center(
//         child: BackButton(
//           onPressed: () => Navigator.of(context).pop(),
//           style: const ButtonStyle(
//             backgroundColor: MaterialStatePropertyAll(Colors.green),
//           ),
//         ),
//       )),
//       body: Stack(
//         children: [
//           Positioned(
//             left: 130,
//             top: 80,
//             child: Image.asset('assets/images/baby1.png'),
//           ),
//           Positioned(
//             child: Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40)),
//                 color: (Color.fromARGB(244, 244, 244, 244)),
//               ),
//               margin: const EdgeInsets.only(top: 208),
//               height: 532.3,
//               width: double.infinity,
//             ),
//           ),
//           Center(
//             child: Positioned(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: Image.asset(
//                   'assets/images/dish_images.png',
//                 ),
//               ),
//             ),
//           ),
//           const Positioned(
//               bottom: 170,
//               left: 82,
//               child: Text(
//                 'Will you eat this?',
//                 style: TextStyle(fontFamily: 'andika', fontSize: 24),
//               )),
//           Positioned(
//             bottom: 110,
//             left: 150,
//             child: Align(
//               alignment: Alignment.center,
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const message()),
//                   );
//                 },
//                 child: const CircleAvatar(
//                   radius: 23,
//                   backgroundColor: Colors.green,
//                   child: Icon(
//                     Icons.check,
//                     weight: 900,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DrawerData extends StatefulWidget {
//   const DrawerData({super.key});

//   @override
//   State<DrawerData> createState() => _DrawerDataState();
// }

// class _DrawerDataState extends State<DrawerData> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Image.asset(
//                         "assets/images/png/bag2.png",
//                         width: 80,
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       const Text(
//                         "Professionals",
//                         style: TextStyle(
//                             color: themebuttoncolor,
//                             fontSize: 22,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//           const Divider(),
//           Column(
//             children: List.generate(
//               7,
//               (index) => Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       color: index == 0 ? themebuttoncolor : themewhitecolor),
//                   child: ListTile(
//                     onTap: () {
//                       if (index == 0) {
//                         Go.pop(context);
//                         Go.replacementroute(context, const VenderDashboard());
//                       } else if (index == 1) {
//                          Go.pop(context);
//                         Go.route(context, const ChatScreen());
//                       } else if (index == 2) {
//                          Go.pop(context);
//                         Go.route(context, const NotificationScreen());
//                       } else if (index == 3) {
//                          Go.pop(context);
//                         Go.route(context, const MyServices());
//                       } else if (index == 4) {
//                          Go.pop(context);
//                         Go.route(context, const OrderScreen());
//                       } else if (index == 5) {
//                          Go.pop(context);
//                         Go.route(context, const SettingScreen());
//                       }
//                       else if (index == 6) {
//                         Go.pop(context);
//                       }
//                     },
//                     leading: Icon(
//                       Icons.arrow_right,
//                       color: index == 0 ? themewhitecolor : themeblackcolor,
//                       size: 30,
//                     ),
//                     title: Text(
//                       index == 0
//                           ? "Dashboard"
//                           : index == 1
//                               ? "Chats"
//                               : index == 2
//                                   ? "Notifications"
//                                   : index == 3
//                                       ? "My Services"
//                                       : index == 4
//                                           ? "Orders"
//                                           : index == 5
//                                               ? "Settings"
//                                               : "Logout",
//                       style: TextStyle(
//                           color: index == 0 ? themewhitecolor : themeblackcolor,
//                           fontSize: 18),
//                     ),
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

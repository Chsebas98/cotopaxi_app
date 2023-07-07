// import 'package:flutter/material.dart';
// import 'package:flutter_unity_widget_pro/flutter_unity_widget_pro.dart';


// class UnityScreen extends StatefulWidget {
//   const UnityScreen({super.key});

//   @override
//   State<UnityScreen> createState() => _UnityScreenState();
// }

// class _UnityScreenState extends State<UnityScreen> {
//   static final GlobalKey<ScaffoldState> _scaffoldKey =
//       GlobalKey<ScaffoldState>();
//   UnityWidgetController? _unityWidgetController;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: SafeArea(
//         bottom: false,
//         child: WillPopScope(
//           onWillPop: () async {
//             Pop the category page if Android back button is pressed.
//             return true;
//           },
//           child: Container(
//             color: Colors.yellow,
//             child: UnityWidget(
//               onUnityCreated: onUnityCreated,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   void onUnityCreated(controller) {
//     _unityWidgetController = controller;
//   }
// }

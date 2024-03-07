// // ignore_for_file: unused_import, camel_case_types, unnecessary_string_interpolations, non_constant_identifier_names
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Screentest extends StatefulWidget {
//   const Screentest({Key? key}) : super(key: key);

//   @override
//   State<Screentest> createState() => _ScreentestState();
// }

// class _ScreentestState extends State<Screentest> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Model(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('providers'),
//           centerTitle: true,
//         ),
//         body: Consumer<Model>(
//           builder: (context, model, child) {
//             return Column(
//               children: [
//                 const SizedBox(height: 20),
//                 Center(child: Text('${model.name}')),
//                 const SizedBox(height: 20),
//                 MaterialButton(
//                   color: Colors.blue,
//                   textColor: Colors.white,
//                   child: const Text('DO Think'),
//                   onPressed: () {
//                     model.changename();
//                   },
//                 )
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class Model extends ChangeNotifier {
//   var name = 'Welcome';
//   changename() {
//     name = 'ismail';
//     notifyListeners();
//   }
// }

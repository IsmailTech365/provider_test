// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenState3 extends StatefulWidget {
  const ScreenState3({Key? key}) : super(key: key);

  @override
  State<ScreenState3> createState() => _ScreenState3State();
}

class _ScreenState3State extends State<ScreenState3> {
  @override
  Widget build(BuildContext context) {
    return const rrrr();
  }
}

class rrrr extends StatelessWidget {
  const rrrr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('providers'),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider<Model>(
        create: (context) => Model(),
        // builder: ,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TEST'),
          ),
          body: Consumer<Model>(
            builder: ((context, model, child) => Column(
                  children: [
                    Text(model.name),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = 'Welcome';
  get n1 => name;
  ChangeNotifier() {
    name = 'ismail';
  }
}

// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenState2 extends StatefulWidget {
  const ScreenState2({Key? key}) : super(key: key);

  @override
  State<ScreenState2> createState() => _ScreenState2State();
}

class _ScreenState2State extends State<ScreenState2> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('providers'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            //////////////////////////////////////////
            Selector<Model, int>(
              selector: (context, nn) => nn.name1,
              builder: (context, model, child) {
                print('c1');
                return Text('$model');
              },
            ),
            const SizedBox(height: 20),
            Selector<Model, String>(
              selector: (context, nn) => nn.name2,
              builder: (context, model, child) {
                print('c2');
                return Text(model);
              },
            ),
            const SizedBox(height: 20),
            /////////////////////////////////////////
            Consumer<Model>(
              builder: (context, model, child) => MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Convert To Ismail'),
                onPressed: () {
                  model.ChangeNotifier0();
                  print('${model.n1}');
                },
              ),
            ),
            const SizedBox(height: 20),
            /////////////////////////////////////////
            Consumer<Model>(
              builder: (context, model, child) => MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Convert To Mostfa'),
                onPressed: () {
                  model.ChangeNotifier1();
                  print('${model.n2}');
                },
              ),
            ),
            const SizedBox(height: 20),
            ////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  var name1 = 1;
  var name2 = 'welcome';
  get n1 => name1;
  get n2 => name2;
  ChangeNotifier0() {
    name1++;
    notifyListeners();
  }

  ChangeNotifier1() {
    name2 = 'Mostfa';
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueN extends StatelessWidget {

  ValueNotifier<int> _counter=ValueNotifier(0);
  void _icrement(){
    _counter.value=_counter.value+1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        ValueListenableBuilder(valueListenable: _counter, builder: (BuildContext context, value, Widget? child) {
          return Text("$value");
        },)
      ),
      floatingActionButton: FloatingActionButton(onPressed: _icrement,child:Icon(CupertinoIcons.plus) ,tooltip: 'increment'),
    );
  }
}

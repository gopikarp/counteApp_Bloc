import 'package:bard_bloc_/bloc/counter_bloc.dart';
import 'package:bard_bloc_/counter_page.dart';
// import 'package:counter_bloc_app/counter/bloc/counte_bloc.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}

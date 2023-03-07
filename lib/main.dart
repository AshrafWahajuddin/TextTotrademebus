import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trademebus/logic/navigation/navigation_cubit.dart';
import 'package:trademebus/presentation/screens/root_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: RootScreen(),
      ),
    );
  }
}
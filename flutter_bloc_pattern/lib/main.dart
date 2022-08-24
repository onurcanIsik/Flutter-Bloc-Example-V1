import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/core/cubit/homepage_cubit.dart';
import 'package:flutter_bloc_pattern/core/page/homepage.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => OperationCubit())),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}

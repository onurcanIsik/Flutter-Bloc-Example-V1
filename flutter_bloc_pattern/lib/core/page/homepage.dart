import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/core/cubit/homepage_cubit.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  int? sayi1;
  int? sayi2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit - four operations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<OperationCubit, int>(builder: ((context, state) {
              return Text(
                "$state",
                style: const TextStyle(fontSize: 40),
              );
            })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(fontSize: 25),
                onChanged: (value) {
                  sayi1 = int.parse(value);
                },
                decoration: InputDecoration(
                  hintText: "Sayı - 1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(fontSize: 25),
                onChanged: (value) {
                  sayi2 = int.parse(value);
                },
                decoration: InputDecoration(
                  hintText: "Sayı - 2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<OperationCubit>().plus(sayi1!, sayi2!);
                  },
                  child: const Text("Toplama / plus"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<OperationCubit>().multip(sayi1!, sayi2!);
                  },
                  child: const Text("Çarpma / 	multiplication"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<OperationCubit>().divided(sayi1!, sayi2!);
                  },
                  child: const Text("Bölme / divided"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<OperationCubit>().minus(sayi1!, sayi2!);
                  },
                  child: const Text("Çıkarma / minus"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

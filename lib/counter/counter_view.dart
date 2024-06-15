import 'package:bloc_tut/counterr/cubit_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<CounterCubit, int>(builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
            ),
          );
        }),
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                child: Icon(Icons.remove)),
            FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().increment(),
                child: Icon(Icons.add)),
          ],
        ));
  }
}

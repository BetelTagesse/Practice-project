import 'package:bloc_tut/counterr/counter_view.dart';
import 'package:bloc_tut/counterr/cubit_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(10),
        child: BlocListener<CounterCubit, int>(
            listener: (context, state) {
              if (state == 10) {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Text('10 reached'),
                        ));
              }
            },
            child: CounterView()));
  }
}

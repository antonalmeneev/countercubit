import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Counter')),
      body: BlocBuilder<CounterCubit, int>(
          builder: (context, count) => GestureDetector(
            onTap:() => context.read<CounterCubit>().increment(),
            child: Center(
                  child: Text('$count', style: TextStyle(fontSize: count.toDouble()),
                ),),
              ),),
      // floatingActionButton: Column(
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       child: const Icon(Icons.add),
      //       onPressed: () => context.read<CounterCubit>().increment(),
      //     ),
      //     const SizedBox(
      //       height: 4,
      //     ),
      //     FloatingActionButton(
      //       child: const Icon(Icons.remove),
      //       onPressed: () => context.read<CounterCubit>().decrement(),
      //     ),
      //   ],
      // ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_mvvm_stacked/core/viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Counter View'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${model.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

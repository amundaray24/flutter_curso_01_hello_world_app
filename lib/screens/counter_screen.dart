import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int counter = 0;

  void increment() => setState(() => counter++);
  void decrement() => setState(() => counter>0 ? counter-- : counter);
  void reset() => setState(() => counter=0);

  @override
  Widget build(BuildContext context) {

    const TextStyle textStyle = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter Screen'),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Taps Number', style: textStyle),
            Text('$counter',style: textStyle)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        incrementFunction: increment,
        resetFunction: reset,
        decrementFunction: decrement,
      )
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function incrementFunction;
  final Function decrementFunction;
  final Function resetFunction;
  
  const CustomFloatingActions({
    super.key, required this.incrementFunction, required this.decrementFunction, required this.resetFunction
  });

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => resetFunction(),
          tooltip: 'Reset Counter',
          child: const Icon(Icons.restart_alt_sharp),
        ),         
        
        FloatingActionButton(
          onPressed: () => decrementFunction(),
          tooltip: 'Reduce Counter',
          child: const Icon(Icons.exposure_minus_1),
        ),

        FloatingActionButton(
          onPressed: () => incrementFunction(),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
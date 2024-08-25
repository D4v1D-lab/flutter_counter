import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    setState(() => counter++);
  }

  void decrease() {
    setState(() => counter--);
  }

  void reset() {
    setState(() => counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    const fontnc = TextStyle(color: Colors.white, fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
        elevation: 10,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Contador de pulsos', style: fontnc),
          Text('$counter', style: fontnc)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.remove), onPressed: () => decreaseFn()),
        //  () => setState(() => counter--))
        const SizedBox(
          width: 30,
        ),
        FloatingActionButton(
            child: const Icon(Icons.square), onPressed: () => resetFn()),
        // () => setState(() => counter = 0)),
        const SizedBox(
          width: 30,
        ),
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => increaseFn())
        // () => setState(() => counter++))
      ],
    );
  }
}

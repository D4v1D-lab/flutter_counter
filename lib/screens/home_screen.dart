import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontnc = TextStyle(color: Colors.white, fontSize: 30);
    int counter = 10;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Center(child: Text('Pagina de inicio')),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            log('$counter');
          }),
    );
  }
}

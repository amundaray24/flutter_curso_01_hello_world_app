import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {

    const TextStyle textStyle = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home Screen'),
        ),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Taps Number', style: textStyle),
            Text('10',style: textStyle)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('prueba');
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      )
    );
  }
}
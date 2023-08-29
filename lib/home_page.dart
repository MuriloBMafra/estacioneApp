import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EstacioneAi'),
        backgroundColor: Color.fromARGB(255, 172, 65, 23),
      ),
      body: Center(
        child: Text('Olá mundo'),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('clicou');
        }),
    );
  }
    
}
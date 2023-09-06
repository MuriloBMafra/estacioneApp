import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
            accountName: Text('Murilo Mafra'), 
            accountEmail: Text('murilommafra@gmail.com'),
            ),
            ListTile( 
              leading: Icon(Icons.home),
              title: Text('inicio'),
              onTap: (){
                print('Home');
              }
            ),
            ListTile( 
              leading: Icon(Icons.car_crash),
              title: Text('Cadastrar Veiculo'),
              onTap: (){
                Navigator.of(context).pushNamed('/cadastrar_veiculo');
              }
            ),
            ListTile( 
              leading: Icon(Icons.list),
              title: Text('Lista veiculos'),
              onTap: (){
                print('Listar Veiculo');
              }
            ),
            ListTile( 
              leading: Icon(Icons.edit_document),
              title: Text('Relatorio'),
              onTap: (){
                print('Home');
              }
            ),
            ListTile( 
              leading: Icon(Icons.edit_document),
              title: Text('Forma pag'),
              onTap: (){
               Navigator.of(context).pushNamed('/forma_pagamento');
              }
            ),
            ListTile( 
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              }
            ),
          ],
        ),
      ),
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

import 'package:flutter/material.dart';

import 'app/views/cadastrar_usuario.dart';
import 'app/views/cadastrar_veiculo.dart';
import 'app/views/home_page.dart';
import 'app/views/login_page.dart';


// import 'home_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/cadastrar_usuario': (context) => CadastrarUsuario(),
        '/cadastrar_veiculo': (context) => CadastrarVeiculo(),

      },
      );
  }
}
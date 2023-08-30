import 'package:flutter/material.dart';

class CadastrarUsuario extends StatefulWidget {
 
  @override
  CadastrarUsuarioState createState() => CadastrarUsuarioState();
}

class CadastrarUsuarioState  extends State<CadastrarUsuario> {
  String nome = '';
  String email = ''; 
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        
        width: double.infinity,
        height: double.infinity,
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextField(
              onChanged: (text){
                nome = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text){
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),

             TextField(
              onChanged: (text){
                senha = text;
              },
              obscureText: true,
              decoration: 
              InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
          
          SizedBox(
              height: 15,
            ),

           TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.blue.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.blue.withOpacity(0.12);
                    return null; // Defer to the widget's default.
                  },
                ),
              ),
              onPressed: () { 
                print(nome);
                print(email);
                print(senha);
               },
              child: Text('Cadastrar')
            ),
          ],
        ),
     ),
      ),
    );
  }
}
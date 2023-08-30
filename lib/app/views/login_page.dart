
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
 
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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
                if(email == 'murilommafra@gmail.com' && senha == '123'){
                  Navigator.of(context).pushReplacementNamed('/home');
                }else{
                  print('Login invalido');
                }
               },
              child: Text('Entrar')
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
                Navigator.of(context).pushNamed('/cadastrar_usuario');
               },
              child: Text('Cadastar')
            ),
          ],
        ),
     ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
 
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
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
              onPressed: () { print("Olá mundo"); },
              child: Text('Entrar')
            )
          ],
        ),
     ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/helper.dart';
import '../widgets/app_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Expanded(
            //   flex: 2,
            //   child: Stack(
            //     alignment: Alignment.bottomCenter,
            //     children: [
            //       Positioned(
            //         top: 10,
            //         left: 0.0,
            //         right: 0.0,
            //         child: Container(
            //           height: 10,
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: AssetImage("assets/images/cloth_faded.png"),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         child: Padding(
            //           padding: EdgeInsets.all(20.0),
            //           child: Image.asset(
            //             "assets/images/illustration.png",
            //             scale: 1.1,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 250.0,
                ),
                decoration: BoxDecoration(
                  color: Constants.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      "Bem-vindo ao estacioneAi",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(19, 22, 33, 1),
                          ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Esse é o gerenciamento de estacionamento",
                      style: TextStyle(
                        color: Color.fromRGBO(74, 77, 84, 1),
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    // Let's create a generic button widget
                    AppButton(
                      text: "Acessar",
                      type: ButtonType.PLAIN,
                      onPressed: () {
                        nextScreen(context, "/login");
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    AppButton(
                      text: "Criar conta",
                      type: ButtonType.PRIMARY, 
                      onPressed: () { 
                        nextScreen(context, "/cadastrar");
                       },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

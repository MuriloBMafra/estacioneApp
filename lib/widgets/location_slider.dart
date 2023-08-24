import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/location.dart';

class LocationSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Model to represent each card

    // Make a list to represent each card
    List<Veiculo> locations = [
      Veiculo(
        placa: "QWD-2345",
        marca: "Yamaha",
        modelo: "Fazer",
        categoria: "Moto",
      ),
      Veiculo(
        placa: "Victory Square 18",
        marca: "ui",
        modelo: "Bucharest",
        categoria: "assets/images/house2.png",
      )
    ];
    return Container(
      height: ScreenUtil().setHeight(90.0),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: ScreenUtil().setWidth(200.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(7, 67, 146, 0.61),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 176, 185, 0.42),
                    spreadRadius: 0,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: -16.0,
                    top: 0.0,
                    child: Opacity(
                      opacity: 0.69,
                      // child: Image.asset(
                      //   locations[index].imagePath,
                      // ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${locations[index].placa},\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: locations[index].marca,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        itemCount: locations.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:thuchanh_buoi3_bai3/Screens/Home/Components/app_bar.dart';
import 'package:thuchanh_buoi3_bai3/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth > 460){
            return Container(
              height: size.height,
              // it will take full width
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: CustomAppBar()),
                  Spacer(),
                  // It will cover 1/3 of free spaces
                  Body(),
                  Spacer(
                    flex: 2,
                  ),
                  // it will cover 2/3 of free spaces
                ],
              ),
            );
          }else{
            return Container(
              height: size.height,
              // it will take full width
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: CustomAppBar()),
                  Spacer(),
                  // It will cover 1/3 of free spaces
                  Body(),
                  Spacer(
                    flex: 2,
                  ),
                  // it will cover 2/3 of free spaces
                ],
              ),
            );
          }
        },
      )
    );
  }
}

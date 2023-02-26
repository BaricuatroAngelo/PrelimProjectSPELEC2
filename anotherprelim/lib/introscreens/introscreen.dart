import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../UnicornOutlineButton.dart';

class  IntroScreen extends StatelessWidget{
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
                top: screenHeight*0.1,
                left: -26,
                child: Container(
                  height: 166, width: 166,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFE53BB),
                  ),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX:200,
                        sigmaY:200,
                      ),
                      child: Container(
                        height: 166,
                        width: 166,
                        color: Colors.transparent,
                      )
                  ),
                )),
            Positioned(
                top: screenHeight*0.3,
                right: -100,
                child: Container(
                  height: 166, width: 166,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF09FBD3),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200,
                    ),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
            ),
            SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlineGradientButton(
                      radius: Radius.circular(200),
                      strokeWidth: 4,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFFE53BB),
                            Color(0xFFFE53BB).withOpacity(0),
                            Color(0xFF09FBD3),
                            Color(0xFF09FBD3).withOpacity(0.1)
                          ],
                          stops: [0.2,0.4,0.6,1]
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                alignment: Alignment.bottomLeft,
                                fit: BoxFit.cover,
                                image: AssetImage('images/image 81.png')
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.09,
                    ),
                    Text("Watch Movies in\nVirtual Reality",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight<=667?18:34,
                        fontWeight: FontWeight.w700,
                        color: Colors.white.withOpacity(0.85),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Text("Download and watch offline\nwherever you are",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight<=667?12:16,
                        color: Colors.white.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    OutlineGradientButton(
                      radius: Radius.circular(50),
                      strokeWidth: 4,
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFF06292),
                          Color(0xFF09FBD3),
                        ],
                      ),
                      child: Container(
                          height: 41,
                          width: 160,
                          child: Center(
                            child: TextButton(
                               onPressed: () {
                                 Navigator.pushNamed(context, 'home');
                               },
                              child: Text(
                              'Sign-up',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            ),
                          )
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),

    );
  }
}
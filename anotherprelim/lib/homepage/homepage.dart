import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:prelimproject/custom_icons_icons.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF19191B),
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
                top: screenHeight*0.1,
                left: -86,
                child: Container(
                  height: 166, width: 166,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF09FBD3),
                  ),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX:40,
                        sigmaY:50,
                      ),
                      child: Container(
                        height: 166,
                        width: 166,
                        color: Colors.transparent,
                      )
                  ),
                )),
            Positioned(
              top: screenHeight*0.4,
              right: -100,
              child: Container(
                height: 166, width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFE53BB),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 100,
                    sigmaY: 50,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
                top: screenHeight*0.9,
                left: -26,
                child: Container(
                  height: 166, width: 166,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF09FBD3),
                  ),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX:200,
                        sigmaY:50,
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.transparent,
                      )
                  ),
                )),
            SafeArea(
              bottom: false,
              child: ListView(
                padding: EdgeInsets.all(20),
                primary: true,
                children: [
                  SizedBox(height:  24,),
                  Text(
                    'What would you\nlike to watch?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 36,
                    width: 343,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 8,),
                        Icon(CustomIcons.icon_search, color: Colors.white.withOpacity(0.6),),
                        const SizedBox(width: 8,),
                        Expanded(child: TextField(
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 17,
                            letterSpacing: -0.41,
                          ),

                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 17,
                              letterSpacing: -0.41,
                            )
                          ),
                        )),
                        const SizedBox(width: 8,),
                        Icon(CustomIcons.icon_mic, color: Colors.white.withOpacity(0.6)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  Text('New Movies', style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    width: 427,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 160,
                                  width: 143,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('movies/image 91.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 160,
                                  width: 143,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('movies/image 92.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 160,
                                  width: 143,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, 'movie');
                                    },
                                    child: Container(
                                      child: ClipRRect(
                                        child: Container(
                                          height: 160,
                                          width: 143,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image:  DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage('movies/image 90.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                                SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  Text('Upcoming Movies', style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),),
                  const SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    height: 160,
                    width: 427,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 160,
                                  width: 143,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('movies/image 93.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 160,
                                  width: 143,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('movies/image 84.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  height: 160,
                                  width: 143,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('movies/image 94.png'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFE53BB).withOpacity(0.2),
                  Color(0xff09fbd3).withOpacity(0.2)
                ]
            )
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFE53BB),
                    Color(0xff09fbd3)
                  ]
              )
          ),
          child: RawMaterialButton(
            onPressed: (){},
            shape: const CircleBorder(),
            fillColor: const Color(0xff404c57),
            child: Icon(CustomIcons.icon_plus, color: Colors.white,),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 92,
        borderRadius: 0,
        linearGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFE53BB).withOpacity(0.1),
              Color(0xff09fbd3).withOpacity(0.1)
            ]
        ),
        border: 0,
        blur: 30,
        borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFE53BB).withOpacity(0.1),
              Color(0xff09fbd3).withOpacity(0.1)
            ]
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: (){},
                    icon: Icon(CustomIcons.icon_home),
                  )),
              Expanded(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: (){},
                    icon: Icon(CustomIcons.icon_playtv),
                  )),
              Expanded(
                  child: Text('')),
              Expanded(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: (){},
                    icon: Icon(CustomIcons.icon_categories),
                  )),
              Expanded(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: (){},
                    icon: Icon(CustomIcons.icon_download),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
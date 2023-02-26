import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../custom_icons_icons.dart';

class MoviePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xff19191b),
            ]
          )
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight*0.5,
                width: screenWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/image 76.png'),
                  fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Positioned(
              top: screenHeight*0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,'home');
                        },
                        child: Container(
                          child: ClipRRect(
                            child: Container(
                              height: 44,
                              width:44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.white
                                ),
                              ),
                              child: Icon(
                                CustomIcons.icon_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 3,
                          color: Colors.white,
                        ),
                      ),
                      child: Icon(CustomIcons.icon_menu, color: Colors.white,size: 11,),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 9,
              top: screenHeight*0.42,
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xfffe53bb),
                      Color(0xff09fbd3),
                    ],
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: const Icon(Icons.play_arrow,color: Colors.white,),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight*0.5,
                transform: Matrix4.translationValues(0, -screenHeight*0.05,0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth*0.7,
                      child: Column(
                        children: [
                          Text('Eternals', textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.85)
                          ),
                          ),
                          SizedBox(
                            height: screenHeight <= 844 ? 10 : 20,
                          ),
                          Text('2021 Action-Adventure-Fantasy 2h36m', textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RatingBar.builder(
                            itemSize: 14,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, _)
                            => const Icon(
                                Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating){
                              debugPrint(rating.toString());
                            },
                            unratedColor: Colors.white,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'The saga of the Eternals, '
                                'a race of\nimmortal beings '
                                'who lived on Earth'
                                '\nand shaped its history '
                                'and\ncivilizations', textAlign: TextAlign.center,
                            maxLines: screenHeight <= 844 ? 2 : 4,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight*0.01,
                    ),
                    Container(
                      height: 2,
                      width: screenWidth*0.8,
                      color: Colors.white.withOpacity(0.15),
                    ),
                    SizedBox(
                      height: screenHeight*0.01,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Casts',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight <= 844 ? 10 : 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 390 ? 24:30,
                                backgroundImage: AssetImage('cast/image 77.png'),
                              ),
                              Expanded(child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                constraints: BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Text('Angelina Jolie', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Open Sans',
                                    ),)
                                  ],
                                ),
                              ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 390 ? 24:30,
                                backgroundImage: AssetImage('cast/image 78.png'),
                              ),
                              Expanded(child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                constraints: BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Text('Gemma Chan', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Open Sans',
                                    ),)
                                  ],
                                ),
                              ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 390 ? 24:30,
                                backgroundImage: AssetImage('cast/image 79.png'),
                              ),
                              Expanded(child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                constraints: BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Text('Salma Hayek', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Open Sans',
                                    ),)
                                  ],
                                ),
                              ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 16,
                                maxRadius: screenWidth <= 390 ? 24:30,
                                backgroundImage: AssetImage('cast/image 80.png'),
                              ),
                              Expanded(child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                constraints: BoxConstraints(
                                  maxHeight: 50,
                                  maxWidth: 112,
                                ),
                                transform: Matrix4.translationValues(-6, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Text('Richard Madden', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Open Sans',
                                    ),)
                                  ],
                                ),
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
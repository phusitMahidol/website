//6488055 Phusit Phanurojpacha

import 'package:flutter/material.dart';
import 'main.dart'; // Assuming the first page file is named personal_info_page.dart

class HeightInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF2A2929),
      body: Container(
        width: screenWidth, // Set the width dynamically
        height: 932.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Navigate back to the previous screen
                    },
                    child: Container(
                      width: 90.0,
                      height: 45.0,
                      child: Image.asset('assets/buttonback.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  Text(
                    "What's your",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'current height?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildInnerShadowContainer('height', screenWidth),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: 52.0,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2ADF88), // Top color
                    Color(0xFF628F79), // Bottom color
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: _buildNextButton(),
            ),
            Container(
              width: screenWidth,
              height: 276.0,
              margin: EdgeInsets.symmetric(horizontal: 9.0),
              color: Color(0xFFADADAD),
              child: _buildRectangles(screenWidth),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF2ADF88), // Top color
            Color(0xFF628F79), // Bottom color
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }

  Widget _buildInnerShadowContainer(String text, double width) {
    return Container(
      width: width * 0.8, // Set the width to 80% of the screen width
      height: 41.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
          ),
          BoxShadow(
            color: Colors.white.withOpacity(1),
            spreadRadius: -1,
            blurRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF2ADF88),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }

Widget _buildRectangles(double width) {
  double rectangleWidth = width * 0.25; // Adjust the rectangle width
  double fontSize = 40.0; // Set the font size to 40

  return Padding(
    padding: EdgeInsets.all(18.0),
    child: Container(
      width: width, // Set the width of the container to the screen width
      decoration: BoxDecoration(
        color: Color(0xFFADADAD),
        borderRadius: BorderRadius.circular(10.0), // Set corner radius to 10
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          4,
          (rowIndex) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              3,
              (colIndex) {
                final number = (rowIndex * 3) + colIndex + 1;
                if (number == 10) {
                  return Container(
                    width: rectangleWidth,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        '.',
                        style: TextStyle(
                          color: Colors.black, // Black color
                          fontSize: fontSize,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  );
                } else if (number == 11) {
                  return Container(
                    width: rectangleWidth,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        '0',
                        style: TextStyle(
                          color: Colors.black, // Black color
                          fontSize: fontSize,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  );
                } else if (number == 12) {
                  return Container(
                    width: rectangleWidth,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/deletebutton.png',
                      ),
                    ),
                  );
                } else {
                  return Container(
                    width: rectangleWidth,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        '$number',
                        style: TextStyle(
                          color: Colors.black, // Black color
                          fontSize: fontSize,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    ),
  );
}
}

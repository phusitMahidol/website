import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Height Input',
      home: HeightInputPage(),
    );
  }
}

class HeightInputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A2929),
      body: Container(
        width: 430.0,
        height: 932.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: 90.0,
                    height: 45.0,
                    child: Image.asset('assets/buttonback.png'),
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
                  _buildInnerShadowContainer('height'),
                ],
              ),
            ),
            Container(
              width: 412.0,
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
              width: 412.0,
              height: 276.0,
              margin: EdgeInsets.symmetric(horizontal: 9.0),
              color: Color(0xFFADADAD),
              child: _buildRectangles(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Container(
      width: 345.0,
      height: 52.0,
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
            fontFamily: 'Jost',
          ),
        ),
      ),
    );
  }

  Widget _buildInnerShadowContainer(String text) {
    return Container(
      width: 215.0, // Adjusted width for 'height' box
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
            fontFamily: 'Jost',
          ),
        ),
      ),
    );
  }

  Widget _buildRectangles() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          4,
          (rowIndex) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
              (colIndex) {
                final number = (rowIndex * 3) + colIndex + 1;
                if (number == 10) {
                  return Container(
                    width: 120.0,
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
                          fontSize: 24.0, // Increased font size
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jost',
                        ),
                      ),
                    ),
                  );
                } else if (number == 11) {
                  return Container(
                    width: 120.0,
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
                          fontSize: 24.0, // Increased font size
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jost',
                        ),
                      ),
                    ),
                  );
                } else if (number == 12) {
                  return Container(
                    width: 120.0,
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
                    width: 120.0,
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
                          fontSize: 24.0, // Increased font size
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jost',
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
    );
  }
}

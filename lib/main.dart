import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: CircularParticleScreen(),
      ),
    );
  }
}

class CircularParticleScreen extends StatelessWidget {
  const CircularParticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home,color: Colors.white,),
            Icon(Icons.notifications,color: Colors.white),
            Icon(Icons.settings,color: Colors.white),
            Icon(Icons.people,color: Colors.white),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Particles Effect',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Container(
          key: UniqueKey(),
          child: Center(
            child: CircularParticle(
              awayRadius: 80,
              numberOfParticles: 200,
              speedOfParticles: 1,
              height: screenHeight,
              width: screenWidth,
              onTapAnimation: true,
              particleColor: Colors.white.withAlpha(150),
              awayAnimationDuration: Duration(milliseconds: 600),
              maxParticleSize: 8,
              isRandSize: true,
              isRandomColor: true,
              randColorList: [
                Colors.red.withAlpha(210),
                Colors.white.withAlpha(210),
                Colors.yellow.withAlpha(210),
                Colors.green.withAlpha(210)
              ],
              awayAnimationCurve: Curves.slowMiddle,
              enableHover: true,
              hoverColor: Colors.white,
              hoverRadius: 90,
              connectDots: true,
            ),
          ),
        ),
      ),
    );
  }
}
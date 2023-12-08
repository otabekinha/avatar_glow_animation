import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AvatarGlow(
                endRadius: 50.0,
                glowColor: Colors.white,
                duration: Duration(milliseconds: 2000),
                repeatPauseDuration: Duration(milliseconds: 100),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              AvatarGlow(
                endRadius: 50.0,
                glowColor: Colors.red,
                duration: Duration(milliseconds: 1000),
                repeatPauseDuration: Duration(milliseconds: 100),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

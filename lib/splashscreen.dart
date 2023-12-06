import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushNamed(context, '/loginScreen');
    });
    super.initState();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: const[
          Center(child: Text('Splash Screen'),),
          SizedBox(height: 8),
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 8),
          Text(
            'v1.0.0'
          )

         ],
      ),
    ); 
  }
}
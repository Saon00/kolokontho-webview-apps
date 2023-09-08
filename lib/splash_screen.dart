import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/kolokantha.png',
                  height: 250,
                ),
              ),
            ),
            const Column(
              children: [
                CircularProgressIndicator(
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Version 1.0.0',
                    style: TextStyle(
                        color: Colors.grey, fontSize: 12, letterSpacing: 0.6),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

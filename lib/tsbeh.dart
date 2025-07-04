import 'package:flutter/material.dart';

class TsbehPage extends StatefulWidget {
  const TsbehPage({super.key});

  @override
  State<TsbehPage> createState() => _TsbehPageState();
}

class _TsbehPageState extends State<TsbehPage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "المسبحة",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,fontFamily: 'Rakkas',),
        ),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "عدد التسبيحات",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "$counter",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 50,
                ),
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: const Text(
                "سَبِّح",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: _resetCounter,
              child: const Text(
                "إعادة التصفير",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}


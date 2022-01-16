import 'package:flutter/material.dart';
import 'Daily_Commission.dart';

void main() {
  runApp(MaterialApp(
    title: "Page Navigation",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hygieia")),
      body: Center(
        child: Column(
            children: [ 
              const SizedBox(height: 20),
              const Image(
                image: AssetImage('assets/Hygieia.png'),
                width: 996,
                height: 560,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minimumSize: const Size(150, 50),
                  primary: Colors.green[400]),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Daily_Commission_page()));
                  },
                child: const Text('Continue'),
              )
          ],
      )),
    );
  }
}

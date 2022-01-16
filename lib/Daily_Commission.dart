import 'package:flutter/material.dart';

class Daily_Commission_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daily Commission")),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                print("button pressed"); // to confirm the button is clicked
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Center(
                                child: Text('What did you eat for Breakfast?')),
                            SizedBox(height: 20),
                            _Food_Selection('assets/apple.png', 'Food 1', 1000),
                            _Food_Selection('assets/apple.png', 'Food 2',
                                2000), //We will need pics for other stuff, but now is good enough
                            _Food_Selection('assets/apple.png', 'Food 3', 3000),
                            _Food_Selection('assets/apple.png', 'Food 4', 4000),
                            _Food_Selection('assets/apple.png', 'Food 5', 5000),
                            _Food_Selection('assets/apple.png', 'Food 6', 6000),
                            _Food_Selection('assets/apple.png', 'Food 7', 6000),
                            _Food_Selection('assets/apple.png', 'Food 8', 6000),
                            _Food_Selection('assets/apple.png', 'Food 9', 6000),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Breakfast'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(150, 50),
                  primary: Colors.green[400]),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("button pressed"); // to confirm the button is clicked
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Center(child: Text('What did you eat for Lunch?')),
                            SizedBox(height: 20),
                            _Food_Selection('assets/apple.png', 'Food 1', 1000),
                            _Food_Selection('assets/apple.png', 'Food 2',
                                2000), //We will need pics for other stuff, but now is good enough
                            _Food_Selection('assets/apple.png', 'Food 3', 3000),
                            _Food_Selection('assets/apple.png', 'Food 4', 4000),
                            _Food_Selection('assets/apple.png', 'Food 5', 5000),
                            _Food_Selection('assets/apple.png', 'Food 6', 6000),
                            _Food_Selection('assets/apple.png', 'Food 7', 6000),
                            _Food_Selection('assets/apple.png', 'Food 8', 6000),
                            _Food_Selection('assets/apple.png', 'Food 9', 6000),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Lunch'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(150, 50),
                  primary: Colors.green[400]),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("button pressed"); // to confirm the button is clicked
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Center(child: Text('What did you eat for Dinner?')),
                            SizedBox(height: 20),
                            _Food_Selection('assets/apple.png', 'Food 1', 1000),
                            _Food_Selection('assets/apple.png', 'Food 2',
                                2000), //We will need pics for other stuff, but now is good enough
                            _Food_Selection('assets/apple.png', 'Food 3', 3000),
                            _Food_Selection('assets/apple.png', 'Food 4', 4000),
                            _Food_Selection('assets/apple.png', 'Food 5', 5000),
                            _Food_Selection('assets/apple.png', 'Food 6', 6000),
                            _Food_Selection('assets/apple.png', 'Food 7', 6000),
                            _Food_Selection('assets/apple.png', 'Food 8', 6000),
                            _Food_Selection('assets/apple.png', 'Food 9', 6000),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Dinner'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(150, 50),
                  primary: Colors.green[400]),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
            onPressed: () {
              print("button pressed"); // to confirm the button is clicked
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    elevation: 16,
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          SizedBox(height: 20),
                          Center(child: Text('What did you eat for Snack?')),
                          SizedBox(height: 20),
                          _Food_Selection('assets/apple.png', 'Food 1', 1000),
                          _Food_Selection('assets/apple.png', 'Food 2',
                              2000), //We will need pics for other stuff, but now is good enough
                          _Food_Selection('assets/apple.png', 'Food 3', 3000),
                          _Food_Selection('assets/apple.png', 'Food 4', 4000),
                          _Food_Selection('assets/apple.png', 'Food 5', 5000),
                          _Food_Selection('assets/apple.png', 'Food 6', 6000),
                          _Food_Selection('assets/apple.png', 'Food 7', 6000),
                          _Food_Selection('assets/apple.png', 'Food 8', 6000),
                          _Food_Selection('assets/apple.png', 'Food 9', 6000),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text('Snack'),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                minimumSize: Size(150, 50),
                primary: Colors.green[400]),
          ),
        ]),
      ),
    );
  }

  Widget _Food_Selection(String imageAsset, String food, double calories) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Container(height: 2, color: Colors.green[400]),
          SizedBox(height: 12),
          Row(
            children: <Widget>[
              CircleAvatar(backgroundImage: AssetImage(imageAsset)),
              SizedBox(width: 12),
              Text(food),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[900],
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text('$calories'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

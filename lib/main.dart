import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pointsANum = 0;

  int pointsBNum = 0;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Points Counter",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$pointsANum",
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsANum++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsANum = pointsANum + 2;
                          });
                        },
                        child: Text(
                          "Add 2 Points",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(80, 50),
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsANum = pointsANum + 3;
                          });
                        },
                        child: Text(
                          "Add 3 Points",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(80, 50),
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 260, // Specify a height for the container
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$pointsBNum",
                      style: TextStyle(fontSize: 100),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsBNum++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsBNum = pointsBNum + 2;
                          });
                        },
                        child: Text(
                          "Add 2 Points",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(80, 50),
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsBNum = pointsBNum + 3;
                          });
                        },
                        child: Text(
                          "Add 3 Points",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(80, 50),
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pointsANum = 0;
                  pointsBNum = 0;
                });
              },
              child: Text(
                "Reset Button",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(80, 50),
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

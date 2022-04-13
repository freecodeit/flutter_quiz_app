import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color secondColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "your score is",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "${widget.score}",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              color: Colors.orange,
              textColor: Colors.white,
              child: Text("Repeat the Quiz"),
            )
          ],
        ),
      ),
    );
  }
}

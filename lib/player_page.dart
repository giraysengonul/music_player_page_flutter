import 'package:flutter/material.dart';
import 'soft_control.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F6),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularSoftButton(
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text("Fav. Album"),
                CircularSoftButton(
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.white30],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: Colors.lightBlue,
                          offset: Offset(-8, -6),
                          blurRadius: 12),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.0,
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                  child: CircleAvatar(
                    backgroundImage: Image.network(
                      "https://cdn.pixabay.com/photo/2020/02/02/03/44/woman-4811942_1280.png",
                      fit: BoxFit.fill,
                    ).image,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Life IS Good (Feat. Drake)",
              style: TextStyle(fontSize: 28.0, color: Colors.black),
            ),
            Text("Future",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 32.0,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32.0),
                  width: double.infinity,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(1, 4),
                      ),
                      BoxShadow(
                        color: Color(0xFFDADFF0),
                        offset: Offset(-1, -4),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 2,
                  bottom: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 36.0,
                    ),
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(16.0),
                      gradient: LinearGradient(
                        colors: [Color(0xFFB8ECED), Colors.lightBlue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1:30",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Text(
                    "3:52",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularSoftButton(
                  icon: Icon(Icons.skip_previous),
                ),
                CircularSoftButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 48.0,
                  ),
                  radius: 48.0,
                ),
                CircularSoftButton(
                  icon: Icon(Icons.skip_next),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

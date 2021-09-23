import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: SizedBox(
        width: 350,
        height: 350,
        child: Stack(
          children: <Widget>[
            Container(
              width: 350,
              height: 350,
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.lightBlue.withAlpha(0),
                    // Colors.lightBlue,
                    Colors.blue
                  ],
                ),
              ),
              child: const Text(
                'โปรไฟล์ของฉัน',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/12/15/17/16/boardwalk-569314_1280.jpg"),
            )
          ],
        ),
      )),
    );
  }
}

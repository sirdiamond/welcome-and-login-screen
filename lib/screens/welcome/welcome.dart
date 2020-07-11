import 'package:flutter/material.dart';
import 'package:welcome/screens/signin/sigin.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Hero(
              tag: 'massa',
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/bakery.jpeg'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  WelcomeText(),
                  WelcomeButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'BAKING LESSONS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'MASTER THE ART OF BAKING',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton.icon(
            color: Color(0xFFFFBD73),
            label: Text(
              'START LEARNING',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),
            icon: Icon(Icons.trending_flat),
            onPressed: () {
              _pushToSignIn(context);
            },
          )
        ],
      ),
    );
  }
}

void _pushToSignIn(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
    return SiginScreen();
  }));
}

import 'package:flutter/material.dart';

class SiginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Hero(
                tag: 'massa',
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/bakery.jpeg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RowOne(),
                    RowTwo(),
                    RowThree(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class RowOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'SIGN IN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Color(0xFFFFBD73),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(7.0),
            child: Text(
              'SIGN UP',
              style: TextStyle(
                color: Color(0xFFFFBD73),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RowTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.alternate_email,
                color: Color(0xFFFFBD73),
                size: 21.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[600]))),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open,
                color: Color(0xFFFFBD73),
                size: 21.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[600]))),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class RowThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.grey[700]),
                ),
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Icon(
                    Icons.android,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                width: 21.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.grey[700]),
                ),
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Icon(
                    Icons.bug_report,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFFFBD73),
              borderRadius: BorderRadius.circular(50.0)),
          child: Padding(
            padding: EdgeInsets.all(13.0),
            child: Icon(Icons.trending_flat),
          ),
        ),
      ],
    );
  }
}

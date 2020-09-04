import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set Reminder'
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          PickContainer(
            text1: 'DATE',
            text2: '10 April, 2020',
            icon: Icons.calendar_today,
          ),
          PickContainer(
            text1: 'TIME',
            text2: '1:00 PM',
            icon: Icons.timer,
          ),
          PickContainer(
            text1: 'DOCTOR',
            text2: 'Dr. Rohit Gurung',
            icon: Icons.person,
          ),
          SizedBox(height: 40.0),
          RaisedButton(
              onPressed:(){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'SAVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(width: 10.0),
                  Icon(Icons.notifications, color: Colors.white,)
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class PickContainer extends StatelessWidget {
  
  final String text1;
  final String text2;
  final IconData icon;

  const PickContainer({this.text1, this.text2, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(0Xffd8d9e6),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text1,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                text2,
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
                ),
              ),
            ],
          ),
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: Color(0xff131536),
              borderRadius: BorderRadius.circular(50.0)
            ),
            child: Icon(icon, color: Colors.white)
          )
        ],
      ),
    );
  }
}
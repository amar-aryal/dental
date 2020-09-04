import 'package:darpan_dental/appointment.dart';
import 'package:darpan_dental/feedback.dart' as feedback;
import 'package:darpan_dental/reminder.dart';
import 'package:flutter/material.dart';

class PatientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Profile'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 60.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Chris Pine',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Age: 30 yrs',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Color(0XFF131536),
              child: Text(
                'Update Profile',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Divider(
              indent: 10.0,
              endIndent: 10.0,
              color: Colors.black,
            ),
            Text(
              'ACTIVITIES',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Options(
                    text: 'Set Reminder',
                    url: 'assets/time.png',
                    navigate: Reminder()),
                Options(text: 'View Report', url: 'assets/health-clinic.png'),
              ],
            ),
            Row(
              children: <Widget>[
                Options(
                  text: 'Make Appointment',
                  url: 'assets/dentist.png',
                  navigate: BookAppointment(),
                ),
                Options(
                  text: 'Send Feedback',
                  url: 'assets/social-media.png',
                  navigate: feedback.Feedback(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Options(
                  text: 'Previous Appointments',
                  url: 'assets/telephone.png',
                ),
                Options(
                  text: 'Follow Ups',
                  url: 'assets/appointment.png',
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('Offers & discounts'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Reminders'))
        ],
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String url;
  final String text;
  final Widget navigate;

  const Options({this.url, this.text, this.navigate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigate));
      },
      child: Container(
        width: 170.0,
        height: 220.0,
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.0), color: Colors.white70
            // color: Color(0Xffd8d9e6),
            ),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(url), height: 80.0, width: 80.0),
            SizedBox(height: 10.0),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

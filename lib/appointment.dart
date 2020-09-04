import 'package:darpan_dental/feedback.dart' as feedback;
import 'package:darpan_dental/payment.dart';
import 'package:flutter/material.dart';

class BookAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: SizedBox(
                child: Image.asset('assets/dentist.png'),
                height: 150.0,
                width: 100.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Darpan Dental Home',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Appointment schedules',
                style: TextStyle(
                  fontSize: 22.0,
                  // color: Colors.blueAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  // color: Color(0XFFE3a93b0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Column(
                children: <Widget>[
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: IconButton(
                          icon: Icon(Icons.add_box),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        title: Text(
                          'Dr.Nita Dhakal',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        subtitle: Text(
                          '14th April - 8:00-10:00 am',
                          style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()));
                          },
                          child: Text('Book',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[700])),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: IconButton(
                          icon: Icon(Icons.add_box),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        title: Text(
                          'Dr.Sonik Shrestha',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        subtitle: Text(
                          '14th April - 10:00-1:00 pm',
                          style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()));
                          },
                          child: Text('Book',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[700])),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: IconButton(
                          icon: Icon(Icons.add_box),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        title: Text(
                          'Dr.Rohit Gurung',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        subtitle: Text(
                          '16th April - 10:00-2:00 pm',
                          style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()));
                          },
                          child: Text('Book',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[700])),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: IconButton(
                          icon: Icon(Icons.add_box),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        title: Text(
                          'Dr.Binaya Acharya',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        subtitle: Text(
                          '16th April - 9:00-11:00 am',
                          style: TextStyle(
                              color: Colors.blueGrey[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()));
                          },
                          child: Text('Book',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[700])),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => feedback.Feedback()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.0),
                      child: Text(
                        'Got a feedback? Send us.',
                        style: TextStyle(
                            color: Colors.indigo[800],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

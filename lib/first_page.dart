import 'package:darpan_dental/admin_privilege.dart';
import 'package:darpan_dental/patientRegister.dart';
import 'package:darpan_dental/staff_login.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Use the system as : ',
                style: TextStyle(color: Colors.indigo, fontSize: 30.0),
              ),
              SizedBox(height: 15.0),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PatientRegister()));
              },
              child: Text(
                'Patient',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
              color: Color(0XFF131536),
            ),
            SizedBox(height: 25.0),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 44.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StaffLogin()));
              },
              child: Text(
                'Staff',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
              color: Color(0XFF131536),
            ),
            SizedBox(height: 25.0),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 34.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Admin()));
              },
              child: Text(
                'Admin',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
              color: Color(0XFF131536),
            )
          ],
        ),
      ),
    );
  }
}

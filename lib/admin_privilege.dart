import 'package:darpan_dental/patient_profile.dart';
import 'package:darpan_dental/staff_registration.dart';
import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Text(
              'ACTIVITIES',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Options(
              text: 'Register Staff',
              url: 'assets/add.png',
              navigate: StaffRegister(),
            ),
            Options(
              text: 'De-register Staff',
              url: 'assets/minus.png',
              navigate: Deregister(),
            )
          ],
        ),
      ),
    );
  }
}
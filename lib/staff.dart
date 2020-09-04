import 'package:darpan_dental/patient_profile.dart';
import 'package:flutter/material.dart';

class Staff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Login'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0),
              Text(
                'ACTIVITIES',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Options(
                text: 'Manage payments',
                url: 'assets/pay.png',
              ),
              Options(
                text: 'Manage patient records',
                url: 'assets/health-clinic.png',
              ),
              Options(
                text: 'Confirm registration',
                url: 'assets/add.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}

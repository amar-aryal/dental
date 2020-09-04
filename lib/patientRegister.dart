import 'dart:ui';
import 'package:darpan_dental/login.dart';
import 'package:darpan_dental/patient_profile.dart';
import 'package:flutter/material.dart';

class PatientRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Patient Registration'
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: SizedBox(
                child: Image.asset('assets/tooth.png'),
                height: 150.0,
                width: 100.0,
              ),
            ),
            Text('Darpan Dental Home',
              style: TextStyle(
                color: Colors.cyanAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0),
            // Text('Full name', 
            //   style: TextStyle(
            //     color: Colors.blueGrey,
            //     fontSize: 18.0,
            //   ),
            //   textAlign: TextAlign.left,
            // ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextFormField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  hintText: 'Enter full name',
                  labelText: 'Full name'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextFormField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  hintText: 'Enter date of birth',
                  labelText: 'Date of birth'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextFormField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  hintText: 'Enter user name',
                  labelText: 'User name'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  hintText: 'Enter password',
                  labelText: 'Password'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextFormField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  hintText: 'Enter location',
                  labelText: 'Location'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextFormField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0)
                  ),
                  hintText: 'Enter date of registration',
                  labelText: 'Date of registration'
                ),
              ),
            ),
            RaisedButton(
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientProfile())
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                'REGISTER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
                child: RichText(text: TextSpan(
                  text: 'Already registered?',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Login here',
                      style: TextStyle(
                        color: Colors.cyanAccent[400]
                      )
                    )
                  ]
                ),
              ),
            ),
            SizedBox(height: 20.0), 
          ],
        ),
      ),
    );
  }
}
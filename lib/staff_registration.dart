import 'package:darpan_dental/staff.dart';
import 'package:flutter/material.dart';

class StaffRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Staff Registration'
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0),
            Text('Darpan Dental Home',
              style: TextStyle(
                color: Colors.cyanAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0),
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
                  hintText: 'Enter date of registration',
                  labelText: 'Date of registration'
                ),
              ),
            ),
            RaisedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Staff()));
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
          ],
        ),
      ),
    );
  }
}

class Deregister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Deregister Staff'
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40.0),
            Text('Darpan Dental Home',
              style: TextStyle(
                color: Colors.cyanAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.bold
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
                  hintText: 'Enter staff ID',
                  labelText: 'Staff ID'
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
                  hintText: 'Enter staff name',
                  labelText: 'Staff name'
                ),
              ),
            ),
            RaisedButton(
              onPressed:(){
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                'DE-REGISTER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
        ],
      ),
    );
  }
}
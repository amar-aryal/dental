import 'package:darpan_dental/staff.dart';
import 'package:flutter/material.dart';


class StaffLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Staff Login'
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 24.0,
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
            SizedBox(height: 20.0),
            RaisedButton(
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Staff())
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 30.0),
            Text(
            'Forgot password?',
            style: TextStyle(
              color: Colors.blue[700],
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'appointment.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Make Payment'
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: SizedBox(
              child: Image.asset('assets/pay.png'),
                height: 250.0,
                width: 200.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Darpan Dental Home',
              style: TextStyle(
                fontSize: 34.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold
              ) ,
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
                  icon: Icon(Icons.payment, color: Color(0XFF131536)),
                  hintText: 'Enter payment amount'
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'How would you like to pay?',
              style: TextStyle(
                fontSize: 28.0,
                color: Color(0XFF131536),
                fontFamily: 'Galada'
              ) ,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(85.0,5.0,15.0,15.0),
              child: Row(
                children: <Widget>[
                  Text('Cash'),
                  Radio(value: null, groupValue: (){}, onChanged: null),
                  SizedBox(width:50.0),
                  Text('Credit'),
                  Radio(value: null, groupValue: null, onChanged: null),
                ],
              ),
            ),
            RaisedButton(
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookAppointment())
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                'Make Payment',
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
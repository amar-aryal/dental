import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 35.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                'Feedback form',
                style: TextStyle(color: Colors.indigo, fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please leave your feedback if any. Your feedback is valuable to us',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                indent: 10.0,
                endIndent: 10.0,
                color: Colors.grey[800],
              ),
              SizedBox(height: 20.0),
              Text(
                'How do you rate our service?',
                style: TextStyle(fontSize: 20.0),
              ),
              RatingBar(
                onRatingUpdate: (rating) {
                  print(rating);
                },
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, _) {
                  return Icon(Icons.star, color: Colors.amber);
                },
              ),
              SizedBox(height: 30.0),
              Text(
                'Your feedback :',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: 'Enter here....',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){},
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    'SEND',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CallToActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 60,
        child: FlatButton(
          onPressed: () {},
          color: Colors.tealAccent[700],
          child: Text(
            "Book Appaaaointment",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}

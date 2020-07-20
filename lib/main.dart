import 'package:appointment/components/callToActionButton.dart';
import 'package:appointment/components/professorDetails.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        TopIconRow(),
                        ProfilePicture(),
                        ProfessorName(),
                        ProfessorSubject(),
                        ProfessorCardRow()
                      ],
                    ),
                    ProfessorDescription(),
                    ProfessorWorkingTime(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70.0),
                      child: ProfessorCommunication(),
                    ),
                  ],
                ),
                CallToActionButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopIconRow extends StatelessWidget {
  const TopIconRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey[700],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.settings,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}

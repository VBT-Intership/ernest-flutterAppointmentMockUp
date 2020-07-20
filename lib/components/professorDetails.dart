import 'package:flutter/material.dart';

class ProfessorName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        "Ernest Jusuf",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ProfessorSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        "Mobile Developer",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[600]),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 65,
        backgroundColor: Colors.grey[300],
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/profilePicture.jpeg'),
          radius: 60,
        ),
      ),
    );
  }
}

class ProfessorCard extends StatelessWidget {
  String value;
  String text;
  IconData icon;
  Color color;
  Color colorAlt;

  ProfessorCard({this.icon, this.text, this.value, this.colorAlt, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: colorAlt,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0)),
                    ),
                    padding:
                        EdgeInsets.only(top: 20, bottom: 8, left: 8, right: 8),
                    child: Icon(
                      icon,
                      color: color,
                    )),
              ),
              Text(
                "$value",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "$text",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.grey[500]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfessorCardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ProfessorCard(
              icon: Icons.person,
              value: "1000+",
              text: "Projects",
              color: Colors.blue[400],
              colorAlt: Colors.blue[100],
            ),
          ),
          Expanded(
            child: ProfessorCard(
              icon: Icons.account_balance,
              value: "10 years",
              text: "Experience",
              color: Colors.red[400],
              colorAlt: Colors.red[100],
            ),
          ),
          Expanded(
            child: ProfessorCard(
              icon: Icons.star,
              value: "4.5",
              text: "Rating",
              color: Colors.orange[400],
              colorAlt: Colors.orange[100],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfessorDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              "About Developer",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
          ),
          Text(
            "Ernest is a mobile developer intern in VBT. He is ambitious in the cross-platform mobile app developement framework called Flutter. But he also wants to learn about native languages.",
            style:
                TextStyle(color: Colors.grey[700], height: 1.5, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ProfessorWorkingTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                "Working Time",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Text(
            "mon-sat 9:00 - 17:00",
            style:
                TextStyle(color: Colors.grey[700], height: 1.5, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ProfessorCommunication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                "Communication",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          CommunicationCard(
            color: Colors.red[400],
            colorAlt: Colors.red[100],
            value: "Chat me up share Photos",
            text: "Messaging",
            icon: Icons.message,
          ),
          CommunicationCard(
            color: Colors.blue[400],
            colorAlt: Colors.blue[100],
            value: "Call me directly",
            text: "Audio Call",
            icon: Icons.phone,
          ),
          CommunicationCard(
            color: Colors.orange[400],
            colorAlt: Colors.orange[100],
            value: "See me live",
            text: "Video Call",
            icon: Icons.linked_camera,
          ),
        ],
      ),
    );
  }
}

class CommunicationCard extends StatelessWidget {
  String value;
  String text;
  IconData icon;
  Color color;
  Color colorAlt;

  CommunicationCard(
      {this.icon, this.text, this.value, this.colorAlt, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: colorAlt,
                borderRadius: new BorderRadius.all(Radius.circular(16))),
            padding: EdgeInsets.all(16),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$text",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  "$value",
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

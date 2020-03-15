import 'package:flutter/material.dart';

class PersonList extends StatelessWidget {
  final String name;
  final String email;
  final String contact;
  final String country;

  const PersonList({
    Key key,
    @required this.name,
    @required this.email,
    @required this.contact,
    @required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 20, 5),
                child: FlutterLogo(
                  size: 60
                )
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),
                    ),
                    Text(contact),
                    Text(email),
                    Text(country)
                  ],
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder()
                      ),                    
                      child: IconButton(
                        icon: Icon(Icons.phone),
                        color: Colors.white, 
                        onPressed: () {},
                      )
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder()
                      ),
                        child: IconButton(
                        icon: Icon(Icons.email),
                        color: Colors.white, 
                        onPressed: () {},
                      )
                    )
                  )
                ],
              )
            ],
          )
        ),
      )
    );
  }
}
import 'dart:convert';

import 'package:contacts_app/models/person.dart';
import 'package:contacts_app/services/api.dart';
import 'package:contacts_app/widgets/persons_list.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
    var _persons = new List<Person>();

  _getpersons() {
    API.getPersons().then((response) {
      setState(() {
        var _body = json.decode(response.body);
        Iterable list = _body['persons'];
        _persons = list.map((model) => Person.fromJson(model)).toList(); 
      });
    });
  }

  initState() {
    super.initState();
      _getpersons();
  }

  dispose() {
    super.dispose();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _persons.length,
        itemBuilder: (context, index) {
          return PersonList(
            contact: _persons[index].contact, 
            country: _persons[index].country, 
            email: _persons[index].email, 
            name: _persons[index].name,
          );
        }
      )
    );
  }
}
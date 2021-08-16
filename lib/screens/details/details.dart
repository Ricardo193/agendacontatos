import 'package:agenda/models/contact.dart';
import 'package:agenda/style.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Contact _selectedContact;

  Details(this._selectedContact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_selectedContact.isFavorite)
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: _selectedContact.name,
              child: Image.asset(_selectedContact.photo),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 16,
              ),
              child: Text(
                _selectedContact.name,
                style: TextStyle(
                  color: grayTheme,
                  fontSize: 24,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    _selectedContact.email,
                    style: TextStyle(
                      color: grayTheme,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:agenda/models/contact.dart';
import 'package:agenda/provider/list_of_contacts.dart';
import 'package:agenda/screens/details/details.dart';
import 'package:agenda/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meus Contatos",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        separatorBuilder: (_, index) {
          return Divider();
        },
        itemCount: listOfContacts.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Contact _contact = listOfContacts.elementAt(index);
    return Column(
      children: [
        ListTile(
          leading: IconButton(
            icon: (_contact.isFavorite)
                ? Icon(
                    Icons.star,
                    color: blueTheme,
                  )
                : Icon(
                    Icons.star_outline,
                    color: blueTheme,
                  ),
            onPressed: () {
              setState(() {
                _contact.isFavorite = !_contact.isFavorite;
              });
            },
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: grayTheme,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext _) {
                    return Details(_contact);
                  },
                ),
              );
            },
          ),
          title: Row(
            children: [
              Hero(
                tag: _contact.name,
                child: ClipOval(
                  child: Image.asset(
                    _contact.photo,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _contact.name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: grayTheme,
                    ),
                  ),
                  Text(
                    _contact.phone,
                    style: TextStyle(
                      fontSize: 10,
                      color: grayTheme,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

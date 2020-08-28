import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(this.backgroundColor, this.title);

  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 5,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
      child: new InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 60),
               Text(
                    title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.5,
                    ),
                  ),
                              Text(
                  '02/08/2020',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w100,
                    fontSize: 12.5,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

final email = TextField(
  autofocus: false,
  style: TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
  decoration: InputDecoration(
    filled: true,
    suffixIcon: Icon(Icons.search),
    fillColor: Colors.white,
    hintText: 'Search the file by name or type.',
    contentPadding: const EdgeInsets.all(15),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(25.7),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(25.7),
    ),
  ),
);

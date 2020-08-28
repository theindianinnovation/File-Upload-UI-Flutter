import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  final int index;
  final String imgPath;
  final String title;
  final String subtitle;

  UploadScreen(this.index, this.imgPath, this.title, this.subtitle);

  String tit = 'Uploading....';
  String sub = 'Please wait a moment while we upload your files.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: index == 1
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              UploadScreen(0, '2', tit, sub)));
                },
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              )
            : null,
        floatingActionButtonLocation: index==1?FloatingActionButtonLocation.centerFloat:null,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: index == 1
              ? Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )
              : Container(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width * 0.6,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/$imgPath.jpeg'))),
            ),
            SizedBox(
              height: 60.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.5,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.5,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ));
  }
}

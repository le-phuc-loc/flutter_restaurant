import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todos/views/authen_page/authen_page.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        // color: Colors.red[600],
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(90)),
                  color: Colors.white,
                ),
                child: Icon(Icons.account_circle_rounded),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            const Text(
              "CALEB G Restaurant",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Container(
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(90),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthenPage()));
                      },
                      child: Text(
                        "Get started",
                        style: TextStyle(color: Colors.amber[800]),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

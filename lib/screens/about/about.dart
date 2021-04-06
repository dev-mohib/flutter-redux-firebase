import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 180),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Signup",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              )),
          Form(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.fromLTRB(35.0, 1.0, 35.0, 1.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Your name",
                        contentPadding: EdgeInsets.all(4.0)),
                    validator: (String val) {
                      if (val.isEmpty || val == null) {
                        return "Enter Name";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.fromLTRB(35.0, 1.0, 35.0, 1.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Your age",
                        contentPadding: EdgeInsets.all(4.0)),
                    validator: (String val) {
                      if (val.isEmpty || val == null) {
                        return "Enter age please";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.fromLTRB(35.0, 1.0, 35.0, 1.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Your email",
                        contentPadding: EdgeInsets.all(4.0)),
                    validator: (String val) {
                      if (val.isEmpty || val == null) {
                        return "Enter email please";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

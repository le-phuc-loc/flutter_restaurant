import 'package:flutter/material.dart';
import 'package:flutter_todos/views/home/home_page.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              autovalidate: true,
              autocorrect: false,
              validator: (_) {
                return true ? null : "Incorrect email format";
              },
              decoration: const InputDecoration(labelText: "Email Address"),
            ),
            TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              autovalidate: true,
              autocorrect: false,
              validator: (_) {
                return true ? null : "Incorrect phone number format";
              },
              decoration: const InputDecoration(labelText: "Phone number"),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              autovalidate: true,
              autocorrect: false,
              validator: (_) {
                return true ? null : "Incorrect password";
              },
              decoration: const InputDecoration(labelText: "Password"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: Text("Forgot passcode?"),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  print("value");
                  print(_emailController.value);
                  print(_passwordController.value);
                  print(_phoneController.value);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Register"),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                    backgroundColor: Colors.red,
                    primary: Colors.white),
              ),
            ),
          ],
        ),
      )
    );
  }




}

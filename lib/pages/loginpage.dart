import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Log-in",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Username", hintText: "Enter Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password", hintText: "Enter Password"),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(elevation: 10.0),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _MyHomePageState();
}

String? name, email, password;
final _formkey = GlobalKey<FormState>();

class _MyHomePageState extends State<Register> {
  String radioitemvalue = "male";
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 14, 0),
          title: const Text("Registration"),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 249, 249, 249),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username:',
                          hintText: 'Enter The Uername you want',
                        ),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "plese enter name";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address:',
                          hintText: 'Enter Your Email Address',
                        ),
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter email address";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password:',
                          hintText: 'Enter Your Password',
                        ),
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter password";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Gender"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: id,
                            onChanged: (value) {
                              setState(() {
                                radioitemvalue = "washing machine";
                                id = 1;
                              });
                            }),
                        const Text("washing machine "),
                        const SizedBox(
                          width: 10,
                        ),
                        Radio(
                            value: 2,
                            groupValue: id,
                            onChanged: (value) {
                              setState(() {
                                radioitemvalue = "helicopter";
                                id = 2;
                              });
                            }),
                        const Text("helicopter"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        child: const Text('Register'),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            log("name ==" + name.toString());
                            log("email ==" + email.toString());
                            log("password  ==" + password.toString());
                            log("gender ==" + radioitemvalue.toString());
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 218, 0, 0),
                          foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}

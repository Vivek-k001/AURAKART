import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 249, 249, 249),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(235, 214, 3, 3),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        obscureText: true,
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                          hintText: 'Enter Your Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter username";
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter password";
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      child: ElevatedButton(
                        child: const Text('LOGIN'),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            print("username = " + usernamecontroller.text);
                            print("password= " + passwordcontroller.text);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                          foregroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Create new Account ?',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Register();
                              }),
                            );
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }
}

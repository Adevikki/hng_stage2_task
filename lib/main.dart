import 'package:flutter/material.dart';

void main() => runApp(UserInput());

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String result = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HNG 8.0 Stage 2 Stack',
                ),
              ],
            ),
            centerTitle: true,
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 70.0,
                            width: 300.0,
                            child: Image.asset(
                              'assets/hnglogo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: 'Visit ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: 'https://hng.tech/',
                                      style: TextStyle(
                                          color: Colors.blue[700],
                                          fontSize: 15)),
                                  TextSpan(
                                      text: ' to join the next HNG Internship',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15))
                                ]),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Full Name',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Username',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextField(
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          ElevatedButton(
                            child: Text('Print'),
                            onPressed: () {
                              setState(() {
                                /*Text(('${nameController.text}'));
                                      Text(('${passwordController.text}'));*/
                              });
                              print(nameController.text);
                              print(passwordController.text);
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      "Full Name:",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '${nameController.text}',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text(
                                          "Email:",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '${emailController.text}',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text(
                                          "Username:",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '${usernameController.text}',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text(
                                          "Password:",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '${passwordController.text}',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          )),
    );
  }
}

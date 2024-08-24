import 'package:flutter/material.dart';
import 'package:untitled15/Home_screen.dart';

class register_Form extends StatefulWidget {
  const register_Form({super.key});

  @override
  State<register_Form> createState() => register_FormState();
}

class register_FormState extends State<register_Form> {
  TextEditingController emailControll = new TextEditingController();
  TextEditingController PasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        title: Text(
          'Register Form',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Container(
          // color: Color.fromARGB(232, 196, 209),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(16.0), child: Text("Name :   ")),
                  Container(
                    width: 200,
                    child: TextFormField(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Email:   ",
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      controller: emailControll,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Password :   ")),
                  Container(
                    width: 200,
                    child: TextFormField(
                      obscureText: true,
                      controller: PasswordController,
                    ),
                  )
                ],
              ),
              MaterialButton(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  " Submit ",
                  style: TextStyle(
                    backgroundColor: Colors.blueGrey,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  print(emailControll.text);
                  print(PasswordController.text);
                  // Within the `FirstRoute` widget:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home_screen()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

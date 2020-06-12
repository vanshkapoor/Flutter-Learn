import 'package:flutter/material.dart';
import 'package:hello_world/page/form.dart';

class LoginPage extends StatefulWidget {

  // creating form  state
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "vk@gmail.com",
                        labelText: "Email address",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "password",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Sign In",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                                    
                  )
                ],          
              ),
            ),
          ),
        ),
      ),
    );
  }
}
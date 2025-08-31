import 'package:flutter/material.dart';
import 'package:task2/my_home_page.dart';

class AuthenticationPage extends StatefulWidget {
  AuthenticationPage({super.key});
  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [Icon(Icons.language), SizedBox(width: 13)],
          title: Text(
            "LearnHub",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Color(0xFF59738C)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    fillColor: Color(0xFFE8EDF2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Color(0xFF59738C)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    fillColor: Color(0xFFE8EDF2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xFF59738C)),
                ),
                SizedBox(height: 15),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Color(0xFFD1E3F2),
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return MyHomePage();
                    }));
                  },
                ),
                SizedBox(height: 30),
                Spacer(),
                Container(
                  child: Text(
                    "New to LearnHub? Sign Up",
                    style: TextStyle(fontSize: 14, color: Color(0xFF59738C)),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      );

  }
}

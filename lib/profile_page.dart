import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task2/my_home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF0F141A),
        unselectedItemColor: Color(0xFF59738C),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
          if (currentIndex == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          } else if (currentIndex == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: "Lessons",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_outlined),
            label: "Progress",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, title: Text("Profile")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                //   color: Color.fromARGB(255, 243, 243, 248),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/IMG_20240502_000918_237.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Islam Saber",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    enabled: false,
                    initialValue: "Islam",

                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(color: Color(0xFF59738C)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),

                      fillColor: Color(0xFFE8EDF2),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    enabled: false,
                    initialValue: "Saber",
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(color: Color(0xFF59738C)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),

                      fillColor: Color(0xFFE8EDF2),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    enabled: false,
                    initialValue: "eslam.saber2442001@gmail.com",
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Color(0xFF59738C)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      prefixIcon: Icon(Icons.email),
                      fillColor: Color(0xFFE8EDF2),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    enabled: false,
                    initialValue: "01002361284",
                    decoration: InputDecoration(
                      labelText: "Phone",
                      labelStyle: TextStyle(color: Color(0xFF59738C)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      prefixIcon: Icon(Icons.phone),
                      fillColor: Color(0xFFE8EDF2),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFE8EDF2),
                    ),
                    onPressed: () {},
                    child: Text("Edit", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

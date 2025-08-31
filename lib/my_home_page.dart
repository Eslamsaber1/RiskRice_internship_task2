import 'package:flutter/material.dart';
import 'package:task2/custom_lesson.dart';
import 'package:task2/lessons_Details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: "Lessons"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Calendar"),
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [Icon(Icons.list, size: 30), SizedBox(width: 15)],
        title: const Text(
          "Lessons",
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search  for lessons",
                    labelStyle: TextStyle(color: Color(0xFF59738C)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(Icons.search),
                    fillColor: Color(0xFFE8EDF2),
                    filled: true,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFE8EDF2),
                      ),
                      onPressed: () {}, child: Text("Subjects",style: TextStyle(color: Colors.black),)),
                      SizedBox(width: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFE8EDF2),
                      ),
                      onPressed: () {}, child: Text("History",style: TextStyle(color: Colors.black),)),
                      SizedBox(width: 10),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFE8EDF2),
                      ),
                      onPressed: () {}, child: Text("Science",style: TextStyle(color: Colors.black),)),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Current Lessons",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),),
            
                SizedBox(height: 15),
                CustomLessonDetails(
                  lessonTitle: "Subjects",
                  lessonType: "Basic Subjects",
                  lessonNumber: "Lesson 1",
                  image: Image.asset("assets/8d589162b06bbef56e0e51af231ac65e40532521.png"),
                ),
            
                 SizedBox(height: 15),
                CustomLessonDetails(
                  lessonTitle: "History",
                  lessonType: "Islamic History",
                  lessonNumber: "Lesson 2",
                  image: Image.asset("assets/2cbc477a4b9de451548d55fdef0941c8f9f4f1df.png"),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Past Lessons",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),),
            
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LessonsDetails();
                    }));
                  },
                  child: CustomLessonDetails(
                    lessonTitle: "Science",
                    lessonType: "Natural Sciences",
                    lessonNumber: "Lesson 3",
                    image: Image.asset("assets/711e37362ed054431df8be0e0bb6cb6d514e2b05.png"),
                  ),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

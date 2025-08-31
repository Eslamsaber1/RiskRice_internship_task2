import 'package:flutter/material.dart';

class LessonsDetails extends StatefulWidget {
  const LessonsDetails({super.key});
  @override
  State<LessonsDetails> createState() => _LessonsDetailsState();
}

class _LessonsDetailsState extends State<LessonsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle,color: Colors.black,), label: "Lessons"),
        BottomNavigationBarItem(icon: Icon(Icons.tv_outlined,color: Colors.black,), label: "Progress"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,), label: "Profile"),
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Lesson Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/bd57d93887ba9636d19a97582e549acd4bce6111.png",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "This lesson covers the basics of algebra, including variables, expressions, and equations. Learn how to solve for unknowns and apply algebraic concepts to real-world problems.",
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color:Colors.grey[200],),
            ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:15),
                 child: Row(    
                  children: [               
                     Text("Date",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xFF59738C)),),
                     SizedBox(width: 100,),
                      Text("Time",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xFF59738C)),),
                  ],
                                ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:15),
                 child: Row(    
                  children: [               
                     Text("October \n26,2024",style: TextStyle(fontSize: 10),),
                     SizedBox(width: 80,),
                      Text("10:00 AM-11:00 AM",style: TextStyle(fontSize: 10),),
                  ],
                                ),
               ),
                
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                    color: Color(0xFFE8EDF2),
                    onPressed: (){
                
                  },
                  child: Text("Start Lesson"),
                  ),
                  SizedBox(width: 50,),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                    color: Color(0xFFE8EDF2),
                    onPressed: (){
                
                  },
                  child: Text("Download"),
                  )
                ],),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomLessonDetails extends StatelessWidget {
  const CustomLessonDetails({
    super.key,
    required this.lessonType,
    required this.lessonTitle,
    required this.lessonNumber,
    required this.image,
  });
  final String lessonType;
  final String lessonTitle;
  final String lessonNumber;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      child: Row(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(lessonTitle,style: TextStyle(color: Color(0xFF59738C),fontSize: 14),),
              SizedBox(height: 4,),
              Text(lessonType,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              SizedBox(height: 4,),
              Text(lessonNumber,style: TextStyle(color: Color(0xFF59738C),fontSize: 14),),
            ],
          ),
          Spacer(),
          SizedBox(width: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: image.image,
                width: 150,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),

        ],
      ),
    );
  }
}

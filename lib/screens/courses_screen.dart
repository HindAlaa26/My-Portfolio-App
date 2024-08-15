import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoursesScreen extends StatelessWidget {
  CoursesScreen({super.key});
  final List<Map<String, String>> courses = [
    {
      'title': 'Flutter Development Advanced Level Course',
      'organization': 'Egyptian Council for Training and Development',
      'duration': '10 July 2024 – present',
    },
    {
      'title': 'Mobile Application Course',
      'organization': 'Digital Egypt Pioneers Initiative',
      'duration': '28 June 2024 – present',
    },
    {
      'title': 'Flutter Development Basics Level Course',
      'organization': 'Egyptian Council for Training and Development',
      'duration': 'April 2024 – June 2024',
    },
    {
      'title': 'Employability Skills',
      'organization':
          'University Center for Professional Development, Kafr El-Sheikh University',
      'duration': '17 Sep 2023 – 24 Sep 2023',
    },
    {
      'title': 'Business English (Pre-intermediate)',
      'organization': 'AUC',
      'duration': '26 Feb 2023 – 19 March 2023',
    },
    {
      'title': 'Flutter, ITI (Summer training)',
      'duration': '2021-2022',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.grey,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white.withOpacity(0.8),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courses[index]['title']!,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    if (courses[index]['organization'] != null)
                      Text(
                        courses[index]['organization']!,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.blueGrey.shade700,
                        ),
                      ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(Icons.calendar_today,
                            color: Colors.blueGrey.shade600),
                        SizedBox(width: 8.w),
                        Text(
                          courses[index]['duration']!,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.blueGrey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

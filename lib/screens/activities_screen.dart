import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivitiesScreen extends StatelessWidget {
  ActivitiesScreen({super.key});
  final List<Map<String, String>> activities = [
    {
      'role': 'Member of UI/UX Committee',
      'organization': 'Google Developer Student Club',
      'duration': 'March 2024 – July 2024',
    },
    {
      'role': 'Member of Flutter Committee',
      'organization': 'Google Developer Student Club',
      'duration': '2023-2024',
    },
    {
      'role': 'Member of mobile app (Flutter) community',
      'organization': 'Microsoft Student Partner',
      'duration': '2022-2023',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities & Voluntary Work'),
      ),
      body: Container(
        height: ScreenUtil().screenHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.grey.shade300,
              Colors.grey,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: activities.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.only(bottom: 16.0),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        activities[index]['role']!,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey.shade900,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.business, color: Colors.blueGrey.shade500),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Text(
                              activities[index]['organization']!,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.blueGrey.shade700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(Icons.calendar_today,
                              color: Colors.blueGrey.shade500),
                          SizedBox(width: 10.w),
                          Text(
                            activities[index]['duration']!,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.blueGrey.shade500,
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
      ),
    );
  }
}

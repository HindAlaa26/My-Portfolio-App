import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
            padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Faculty of Computers and Information',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87, // Darker text for contrast
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  '(Bioinformatics Department)',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54, // Softer contrast text
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Kafr Elsheikh University',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54, // Softer contrast text
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, color: Colors.black54),
                    SizedBox(width: 8.w),
                    Text(
                      '2019 - 2023',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black54, // Softer contrast text
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color:
                        Colors.white.withOpacity(0.6), // Semi-transparent white
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.grade,
                          color: Colors.blueGrey.shade800, size: 30),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cumulative Grade',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors
                                  .blueGrey.shade900, // Darker for contrast
                            ),
                          ),
                          Text(
                            'Very good with honors',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color:
                                  Colors.blueGrey.shade700, // Medium contrast
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color:
                        Colors.white.withOpacity(0.6), // Semi-transparent white
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.school,
                          color: Colors.blueGrey.shade800, size: 30),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GPA',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors
                                  .blueGrey.shade900, // Darker for contrast
                            ),
                          ),
                          Text(
                            '3.59',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color:
                                  Colors.blueGrey.shade700, // Medium contrast
                            ),
                          ),
                        ],
                      ),
                    ],
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsScreen extends StatelessWidget {
  SkillsScreen({super.key});
  final Map<String, List<String>> skills = {
    'Language Skills': [
      'Arabic: Native',
      'English: Very good command in writing and speaking',
    ],
    'Technical Skills': [
      'Knowledge of Dart programming language',
      'Understanding of Flutter framework',
      'Knowledge of Microsoft Office',
      'Familiarity with SQLite',
      'Knowledge of state management (Cubit, Provider)',
      'Experience with API integration',
    ],
    'Personal Skills': [
      'Strong Communication Skills',
      'Effective teamwork and collaboration',
      'Excellent time management and organizational skills',
      'Adaptability',
      'Ability To Learn',
      'Attention to detail',
      'Work Well Under Pressure',
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        padding: const EdgeInsets.all(16.0),
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
        child: ListView(
          children: skills.entries.map((entry) {
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
                      entry.key,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    ...entry.value.map((skill) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle,
                                color: Colors.blueGrey.shade600),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                skill,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

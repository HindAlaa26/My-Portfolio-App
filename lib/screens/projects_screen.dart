import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/shared_component/WebView.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({super.key});
  final List<Map<String, String>> projects = [
    {
      'title': 'Edu_vista App',
      'description':
          'This app is still in development. Please check the  website for the latest updates.',
      'link': 'https://github.com/HindAlaa26/Edu_vista'
    },
    {
      'title': 'Point Of Sale App',
      'description':
          'Provides essential accessibility features like adding categories, products, clients, and making new sales. Utilized SQLite and hero animation.',
      'link': 'https://github.com/HindAlaa26/Point-Of-Sale-App'
    },
    {
      'title': 'News App',
      'description':
          'A news app built using Flutter with cubit state management and API integration.',
      'link': 'https://github.com/HindAlaa26/News-App'
    },
    {
      'title': 'Todo App',
      'description':
          'A Flutter application for task management. Utilized SQLite and Cubit for state management.',
      'link': 'https://github.com/HindAlaa26/Todo-App'
    },
    {
      'title': 'Movie App',
      'description':
          'Allows users to watch movie details. Utilized shared preferences, provider, and API integration.',
      'link': 'https://github.com/HindAlaa26/movie-app'
    },
    {
      'title': 'X/O Game',
      'description':
          'It is a simple game for two players built using the Flutter framework.',
      'link': 'https://github.com/HindAlaa26/X_O-Game'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
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
        child: ListView.builder(
          itemCount: projects.length,
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
                      projects[index]['title']!,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      projects[index]['description']!,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.blueGrey.shade700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowWebView(
                                url: projects[index]['link'] ?? "",
                              ),
                            ));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.link, color: Colors.blueGrey.shade600),
                          SizedBox(width: 8.w),
                          Text(
                            'GitHub Link',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.blueGrey.shade600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
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

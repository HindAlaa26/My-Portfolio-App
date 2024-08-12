import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/screens/projects_screen.dart';
import 'package:my_portfolio/screens/skills_screen.dart';
import '../activities_screen.dart';
import '../courses_screen.dart';
import '../education_screen.dart';
import '../objective_screen.dart';

class PortfolioScreen extends StatelessWidget {
  List<String> data = [
    "Objective",
    "Education",
    "Courses",
    "Skills",
    "Projects",
    "Activities & voluntary work"
  ];
  List<Widget> screens = [
    const ObjectiveScreen(),
    const EducationScreen(),
    CoursesScreen(),
    SkillsScreen(),
    ProjectsScreen(),
    ActivitiesScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hind Alaa Fathy - Portfolio'),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.blueGrey,
              Colors.grey.shade300,
              Colors.grey,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Center(
            child: Wrap(
                spacing: 20,
                runSpacing: 50,
                alignment: WrapAlignment.center,
                children: List.generate(
                    data.length,
                    (index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => screens[index],
                                ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(1, 2),
                                  )
                                ]),
                            height: 160.h,
                            width: 160.w,
                            child: Center(
                                child: Text(
                              data[index] ?? "No Data",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            )),
                          ),
                        ))),
          ),
        ));
  }
}

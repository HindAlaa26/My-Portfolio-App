import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ObjectiveScreen extends StatefulWidget {
  const ObjectiveScreen({super.key});

  @override
  State<ObjectiveScreen> createState() => _ObjectiveScreenState();
}

class _ObjectiveScreenState extends State<ObjectiveScreen> {
  bool isExpand = false;
  @override
  void initState() {
    init();

    super.initState();
  }

  void init() async {
    if (isExpand) {
      isExpand = false;
      setState(() {});
    }
    await Future.delayed(const Duration(milliseconds: 300));
    isExpand = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objective'),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
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
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: const Offset(0, 1.0),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 130,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 125,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Eng.Hind Alaa",
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Software Engineer',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                height: isExpand ? 210 : 0,
                duration: const Duration(milliseconds: 400),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2.0,
                        blurRadius: 5.0,
                        offset: const Offset(0, 1.0),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(25),
                  child: Text(
                    "Seeking to acquire more skills and greater knowledge in Flutter through this Internship to gain "
                    "  more information and develop professionally. ",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

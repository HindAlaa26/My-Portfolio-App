import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/screens/home_layout/portfolio_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _startApp();
    super.initState();
  }

  void _startApp() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PortfolioScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blueGrey,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 160, bottom: 90),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 130,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 125,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Eng.Hind Alaa",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Text(
                'Software Engineer',
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(height: 30.h),
              Text(
                'Welcome to My Portfolio',
                style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade300),
              ),
              SizedBox(height: 30.h),
              const CircularProgressIndicator(
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}

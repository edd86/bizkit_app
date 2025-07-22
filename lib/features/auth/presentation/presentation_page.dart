import 'package:bizkit_app/features/auth/presentation/register_page.dart';
import 'package:bizkit_app/features/auth/presentation/widgets/text_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({super.key});

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  final double mainSpaces = 3.5.h;
  final double secondarySpaces = 1.85.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset('assets/img/main_2.svg', height: 50.h),
            ),
            SizedBox(height: mainSpaces),
            Center(child: textMain),
            SizedBox(height: 16.5.h),
            Center(
              child: IconButton(
                icon: Icon(Icons.arrow_circle_right),
                iconSize: 25.5.sp,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

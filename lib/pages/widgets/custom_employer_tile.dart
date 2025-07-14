import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomEmployerTile extends StatelessWidget {
  final String name;
  final String rol;
  final String phone;
  final String img;
  final String address;
  const CustomEmployerTile({
    required this.name,
    required this.rol,
    required this.address,
    required this.phone,
    required this.img,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 20.h,
        width: 90.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: SizedBox(
                width: 50.sp,
                height: 50.sp,
                child: Image.asset(img, fit: BoxFit.fitWidth),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  rol,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
                Text(
                  phone,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
                Text(
                  address,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

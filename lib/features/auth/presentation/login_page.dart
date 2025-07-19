import 'package:bizkit_app/core/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final double mainSpaces = 3.5.h;
  final double secondarySpaces = 1.85.h;
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Bienvenido a Bizkit',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: mainSpaces),
            Center(child: Image.asset('assets/img/logo.png')),
            SizedBox(height: mainSpaces),
            Center(
              child: Text(
                'Tu Socio al éxito',
                style: TextStyle(
                  fontSize: 16.5.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: mainSpaces),
            TextField(
              controller: _userController,
              decoration: InputDecoration(
                hintText: 'Usuario',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: secondarySpaces),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: mainSpaces),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                child: Text('Iniciar Sesión'),
                //TODO: Implementación del Login a la aplicacion.
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.homePage),
              ),
            ),
            SizedBox(height: secondarySpaces),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Iniciar Sesión con Google'),
              ),
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}

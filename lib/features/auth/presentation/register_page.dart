import 'dart:io';
import 'package:bizkit_app/data/data_json.dart';
import 'package:bizkit_app/features/auth/presentation/widgets/plans_card.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int? _selectedPlanId;
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await showDialog<XFile>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Seleccionar imagen'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, null),
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () async {
              final XFile? photo = await _picker.pickImage(
                source: ImageSource.camera,
                maxWidth: 1024,
                imageQuality: 80,
              );
              Navigator.pop(context, photo);
            },
            child: Text('Cámara'),
          ),
          TextButton(
            onPressed: () async {
              final XFile? image = await _picker.pickImage(
                source: ImageSource.gallery,
                maxWidth: 1024,
                imageQuality: 80,
              );
              Navigator.pop(context, image);
            },
            child: Text('Galería'),
          ),
        ],
      ),
    );

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: _currentStep,
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
        onStepContinue: () {
          switch (_currentStep) {
            case 0:
              if (_nameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Por favor ingresa tu nombre')),
                );
                return;
              }
              break;
            case 1:
              if (_emailController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Por favor ingresa tu email')),
                );
                return;
              }
              if (!EmailValidator.validate(_emailController.text)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Por favor ingresa un email válido'),
                  ),
                );
                return;
              }
              break;
            case 2:
              if (_phoneController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Por favor ingresa tu teléfono'),
                  ),
                );
                return;
              }
              break;
            case 3:
              /* String name = _nameController.text;
              String email = _emailController.text;
              String phone = _phoneController.text;
              String photoUrl = _selectedImage?.path ?? ''; */

              break;
            default:
          }
          if (_currentStep < 4) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        steps: [
          Step(
            title: Text('Nombre completo'),
            content: TextField(
              controller: _nameController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
            ),
          ),
          Step(
            title: Text('Email'),
            content: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Step(
            title: Text('Teléfono'),
            content: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
            ),
          ),
          Step(
            title: Text('Fotografía'),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _selectedImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          _selectedImage!,
                          width: 30.w,
                          height: 30.w,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                IconButton(
                  onPressed: _pickImage,
                  icon: Icon(Icons.photo_camera),
                  tooltip: 'Seleccionar imagen',
                ),
              ],
            ),
          ),
          Step(
            title: Text('Seleccione su plan'),
            content: SizedBox(
              width: 90.w,
              height: 25.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: plans.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => setState(() => _selectedPlanId = plans[index]['id']),
                    child: planCard(
                      plans[index]['id'],
                      plans[index]['name'],
                      plans[index]['price'],
                      plans[index]['desc'],
                      isSelected: _selectedPlanId == plans[index]['id'],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

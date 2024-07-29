import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';
import 'package:image_picker/image_picker.dart';

class ReferralCodesScreen extends StatefulWidget {
  const ReferralCodesScreen({super.key});

  @override
  State<ReferralCodesScreen> createState() => _ReferralCodesScreenState();
}

class _ReferralCodesScreenState extends State<ReferralCodesScreen> {
  File? _image;
  String? _code;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        //_code = _generateCode();
      });
    }
  }

  // String _generateCode() {
  //   final random = Random();
  //   const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  //   return List.generate(8, (index) => chars[random.nextInt(chars.length)]).join();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Referral'),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 3.h),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(12.dp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xff0095D0),
                    ),
                    borderRadius: BorderRadius.circular(7.dp),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Referral codes :',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Center(
                          child: mainElevatedButton(
                               onPressed: _pickImage,
                              width: 40.w,
                              height: 5.h,
                              text: 'Add referral code'),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Table(
                          border: TableBorder.all(color: Colors.grey),
                          children: [
                            TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.grey[200]),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Image',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Code',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (_image != null && _code != null)
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.file(_image!,
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      _code!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                        if (_image == null || _code == null)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow[100],
                                  borderRadius: BorderRadius.circular(6.dp)),
                              width: double.infinity,
                              padding: EdgeInsets.all(16.0),
                              child: Center(
                                child: Text(
                                  'No referral codes available.',
                                  style: TextStyle(color: Colors.brown),
                                ),
                              ),
                            ),
                          ),
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}

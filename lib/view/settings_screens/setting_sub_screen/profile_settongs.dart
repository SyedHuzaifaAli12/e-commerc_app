// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:io';

import 'package:e_commerce/router_structure/navigator.dart';
import 'package:e_commerce/widget/custom_container.dart';
import 'package:e_commerce/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../theme/colors.dart';
import '../../../widget/custom_text_widget.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  // ignore: override_on_non_overriding_member
  var _Image;
  var filedata;
  var imageLink;

  final ImagePicker _picker = ImagePicker();
  pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    print(pickedFile!.path);
    setState(() {
      _Image = File(pickedFile.path);
      filedata = pickedFile;
    });
    // imageStoreStorage();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: themewhitecolor,
        automaticallyImplyLeading: false,
        title: const CustomText(
          text: "Settings",
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: themeblackcolor,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {

            Go.pop(context);
          },
          child: const CustomContainer(
            height: 50,
            width: double.infinity,
            color: themebuttoncolor,
            child: Center(
              child: CustomText(
                text: "Save Changes",
                color: themewhitecolor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Your Profile",
                fontSize: 18,
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  CustomContainer(
                    padding: EdgeInsets.zero,
                    height: 120,
                    width: 120,
                    shape: BoxShape.circle,
                    boxShadow: BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 3,
                        color: themeblackcolor.withOpacity(0.1)),
                    child: Center(
                        child: _Image == null
                            ? const CircleAvatar(
                                radius: 52,
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9F7aRc0I5KJxVfeKHxNg0T0PGtfzc59ixpA&s"),
                              )
                            : CircleAvatar(
                                radius: 52,
                                backgroundImage: FileImage(_Image),
                              )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: GestureDetector(
                      onTap: () {
                        pickImage();
                      },
                      child: const CircleAvatar(
                        backgroundColor: themewhitecolor,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            backgroundColor: themebuttoncolor,
                            child: Icon(
                              Icons.edit,
                              color: themewhitecolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                hintText: "Romina",
                isfilled: true,
                hintStyle: const TextStyle(fontSize: 18),
                filledColor: themebackgroundcolor,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: "gmail@example.com",
                isfilled: true,
                hintStyle: const TextStyle(fontSize: 18),
                filledColor: themebackgroundcolor,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: "************",
                isfilled: true,
                hintStyle: const TextStyle(fontSize: 18),
                filledColor: themebackgroundcolor,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

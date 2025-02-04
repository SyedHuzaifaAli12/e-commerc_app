import 'dart:io';
import 'package:animate_do/animate_do.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:e_commerce/Provider/auth_providers/auth_provider.dart';
import 'package:e_commerce/Provider/change_state.dart';
import 'package:e_commerce/widget/container_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import '../../theme/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController countryName = TextEditingController();

  void SignUpUser() {
    if (email.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("plz enter your email"),

          backgroundColor: Colors.red, // Custom background color
          duration:
              Duration(seconds: 3), // How long the SnackBar will be visible
          shape: RoundedRectangleBorder(
            // Rounded corners for the SnackBar
            borderRadius: BorderRadius.circular(12),
          ),
          behavior: SnackBarBehavior.floating, // Optional: Floating SnackBar
          margin: EdgeInsets.all(10), //
        ),
      );
    } else if (password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("plz enter your pasword"),
          backgroundColor: Colors.red, // Custom background color
          duration:
              Duration(seconds: 3), // How long the SnackBar will be visible
          shape: RoundedRectangleBorder(
            // Rounded corners for the SnackBar
            borderRadius: BorderRadius.circular(12),
          ),
          behavior: SnackBarBehavior.floating, // Optional: Floating SnackBar
          margin: EdgeInsets.all(10), //
        ),
      );
    } else {
      Provider.of<AuthProvider>(context, listen: false)
          .CreateUserWithEmailPassword(
              context: context,
              countryName: countryName.text,
              email: email.text,
              profileImageUrl: '',
              password: password.text);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/png/Group 2.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: FadeInDown(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Create\nAccount",
                        style: TextStyle(
                            color: themeblackcolor,
                            fontSize: 50,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    _Image == null
                        ? GestureDetector(
                            onTap: () {
                              pickImage();
                            },
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: DottedDecoration(
                                  dash: const [12, 12],
                                  strokeWidth: 2,
                                  shape: Shape.circle,
                                  color: themebuttoncolor),
                              child: const Center(
                                child: Icon(
                                  Icons.photo_camera_outlined,
                                  color: themebuttoncolor,
                                  size: 60,
                                ),
                              ),
                            ),
                          )
                        : CircleAvatar(
                            radius: 50,
                            backgroundImage: FileImage(_Image),
                          ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: themelightgreycolor,
                        hintStyle: TextStyle(
                            color: themegreytextcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                const BorderSide(color: themebuttoncolor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                const BorderSide(color: themelightgreycolor)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Consumer<ChangeStateVariables>(
                      builder: (context, newValue, child) {
                        return TextField(
                          controller: password,
                          obscureText: newValue.password,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: themegreytextcolor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            filled: true,
                            fillColor: themelightgreycolor,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  newValue.setPassword();
                                },
                                child: Icon(
                                  newValue.password
                                      ? Icons.remove_red_eye_rounded
                                      : Icons.remove_red_eye_outlined,
                                  color: themegreytextcolor,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    const BorderSide(color: themebuttoncolor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    color: themelightgreycolor)),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    IntlPhoneField(
                      controller: countryName,
                      // focusNode: focusNode,
                      decoration: InputDecoration(
                        fillColor: themelightgreycolor,
                        filled: true,
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: themebuttoncolor),
                        hintText: "+67",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: themelightgreycolor),
                            borderRadius: BorderRadius.circular(25)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: themelightgreycolor)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: themelightgreycolor),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      // languageCode: "en",
                      onChanged: (phone) {
                        // print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        // print('Country changed to: ' + country.name);w
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ContainerButton(
                        onTap: () {
                          SignUpUser();
                          // Go.named(context, RouteName.hellowCardScreen);
                        },
                        height: 60,
                        width: double.infinity,
                        text: "Done",
                        textcolor: themewhitecolor,
                        colors: themebuttoncolor),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Cancel",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

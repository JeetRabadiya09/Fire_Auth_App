import 'package:fire_auth_app/view/auth_view/sign_up_view.dart';
import 'package:flutter/material.dart';

import '../Home/home_view.dart';

class LogininView extends StatefulWidget {
  const LogininView({Key? key}) : super(key: key);

  @override
  State<LogininView> createState() => _LogininViewState();
}

class _LogininViewState extends State<LogininView> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Sign In.png"),
          ),
        ),
        child: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(screenWidth / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  validator: (value) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return "Enter email id ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0.8, color: Color(0x8EB3B3B3)),
                    ),
                    // contentPadding: const EdgeInsets.all(00),
                    isDense: true,
                    labelText: "email",
                    hintText: "Enter email ",
                    contentPadding: const EdgeInsets.all(12),
                    hintStyle: const TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                TextFormField(
                  validator: (value) {
                    if (!RegExp(r"^[a-zA-Z0-9]{6}$").hasMatch(value!)) {
                      return "Enter Passcode";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0.8, color: Color(0x8EB3B3B3)),
                    ),
                    // contentPadding: const EdgeInsets.all(00),
                    isDense: true,
                    labelText: "passcode",
                    hintText: "Enter passcode ",
                    contentPadding: const EdgeInsets.all(12),
                    hintStyle: const TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                      fixedSize: MaterialStatePropertyAll(
                          Size(screenWidth / 1, screenHeight / 18)),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.orange)),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                // GestureDetector(
                //   onTap: () {
                //     if (formkey.currentState!.validate()) {
                //       debugPrint("is valid");
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => const ConfirmEmail(),
                //         ),
                //       );
                //     } else {
                //       debugPrint("is not valid");
                //     }
                //   },
                //   child: Container(
                //     height: screenHeight / 15,
                //     width: double.infinity,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       color: AppColors.orange,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: const Text(
                //       AppStrings.login,
                //       style: TextStyle(
                //         fontSize: 14,
                //         fontFamily: "Poppins",
                //         fontWeight: FontWeight.w500,
                //         color: AppColors.white,
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: screenHeight / 40,
                // ),
                // GestureDetector(
                //   onTap: () {
                //     if (formkey.currentState!.validate()) {
                //       debugPrint("is valid");
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => const ConfirmEmail(),
                //         ),
                //       );
                //     } else {
                //       debugPrint("is not valid");
                //     }
                //   },
                //   child: Container(
                //     height: screenHeight / 15,
                //     width: double.infinity,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       color: AppColors.white,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Image.asset(AppAssets.imagegoogle,
                //             width: screenWidth / 10, height: screenHeight / 10),
                //         SizedBox(
                //           width: screenWidth / 50,
                //         ),
                //         const Text(
                //           AppStrings.logingoogle,
                //           style: TextStyle(
                //             fontSize: 14,
                //             fontFamily: "Poppins",
                //             fontWeight: FontWeight.w600,
                //             color: AppColors.black,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: screenHeight / 50,
                // ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const SignUpView(),
                //       ),
                //     );
                //   },
                //   child: RichText(
                //     text: const TextSpan(
                //       // style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 18),
                //       children: [
                //         TextSpan(
                //             text: AppStrings.richone,
                //             style: TextStyle(
                //               fontSize: 13,
                //               fontWeight: FontWeight.w500,
                //               color: AppColors.black,
                //               fontFamily: "Poppins",
                //             )),
                //         TextSpan(
                //             text: AppStrings.richtwo,
                //             style: TextStyle(
                //               fontSize: 13,
                //               color: AppColors.orangetwo,
                //               fontWeight: FontWeight.w500,
                //               fontFamily: "Poppins",
                //             )),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: screenHeight / 20,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

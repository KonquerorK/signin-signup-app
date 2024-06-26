import 'package:flutter/material.dart';
import 'package:login_signin_form/other/app_colors.dart';
import 'package:login_signin_form/other/app_string.dart';
import 'package:login_signin_form/screens/signin_screen.dart';
import 'package:login_signin_form/widgets/custom_scaffold.dart';

import '../other/app_images.dart';
import '../themes/themes.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formSignInKey = GlobalKey<FormState>();
  bool agreeTerms = true;

  @override
  Widget build(BuildContext context) {
    // return
    return  CustomScaffold(
      // child: Text(AppStrings.signup,style: TextStyle(color: AppColors.accentColor),),

      child: Column(
        children: [
           const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding:  const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration:  const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.signupWel,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: lightColorScheme.secondary),
                      ),

                       const SizedBox(
                        height: 45,
                      ),


                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.fullNameError;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            label: const Text(AppStrings.fullName),
                            hintText: AppStrings.fullNameHint,
                            hintStyle:  const TextStyle(
                              color: AppColors.textColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide:  const BorderSide(
                                    color: AppColors.textColor),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:  const BorderSide(
                                    color: AppColors.textColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),

                       const SizedBox(
                        height: 15,
                      ),

                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.emailError;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            label: const Text(AppStrings.email),
                            hintText: AppStrings.emailHint,
                            hintStyle:  const TextStyle(
                              color: AppColors.textColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide:  const BorderSide(
                                    color: AppColors.textColor),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:  const BorderSide(
                                    color: AppColors.textColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),

                      //input for password

                       const SizedBox(
                        height: 15,
                      ),

                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppStrings.passwordError;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            label:  const Text(AppStrings.password),
                            hintText: AppStrings.passwordHint,
                            hintStyle:  const TextStyle(
                              color: AppColors.textColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide:  const BorderSide(
                                    color: AppColors.textColor),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:  const BorderSide(
                                    color: AppColors.textColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),

                       const SizedBox(
                        height: 35,
                      ),

                      //for remenber password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: agreeTerms,
                                onChanged: (bool? value) {
                                  setState(() {
                                    agreeTerms = value!;
                                  });
                                },
                                activeColor: lightColorScheme.secondary,
                              ),
                               const Text(
                                AppStrings.checkAgree,
                                style: TextStyle(
                                  color: AppColors.textColor,
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            child: Text(
                              AppStrings.persData,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: lightColorScheme.secondary),
                            ),
                          )
                        ],
                      ),

                       const SizedBox(
                        height: 35,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formSignInKey.currentState!.validate() &&
                                agreeTerms) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar(
                                  content: Text(AppStrings.procData),
                                ),
                              );
                            } else if (!agreeTerms) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar( const SnackBar(
                                content: Text(AppStrings.processingAgree),
                              ));
                            }
                          },
                          child:  const Text(AppStrings.signup),
                        ),
                      ),

                       const SizedBox(
                        height: 35,
                      ),

                       const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                          ),
                          Text(
                            AppStrings.signUpWith,
                            style: TextStyle(color: AppColors.textColor),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 0.7,
                            color: Colors.grey,
                          )),
                        ],
                      ),

                       const SizedBox(
                        height: 35,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(AppImages.facebookIcon),
                          Image.asset(AppImages.twitterIcon),
                          Image.asset(AppImages.googleIcon),
                          Image.asset(AppImages.appleIcon),
                        ],
                      ),

                       const SizedBox(
                        height: 35,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           const Text(
                            AppStrings.questSignin,
                            style: TextStyle(color: AppColors.textColor),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (e) => SignInScreen()));
                            },
                            child: Text(
                              AppStrings.signin,
                              style: TextStyle(
                                  color: lightColorScheme.secondary,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}

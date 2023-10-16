import 'package:bookapp/app/signin/widgets/signupform.dart';
import 'package:bookapp/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SignupTabletBody extends StatelessWidget {
  const SignupTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      // backgroundColor: ,
      body: Padding(
        padding: const EdgeInsets.all(paddingHuge),
        child: Center(
          child: Container(
            width: 400,
            child: SignupForm(),
          ),
        ),
      ),
    );
  }
}

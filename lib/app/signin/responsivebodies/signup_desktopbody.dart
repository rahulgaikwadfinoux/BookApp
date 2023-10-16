import 'package:bookapp/app/signin/widgets/signupform.dart';
import 'package:bookapp/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SignupDesktopBody extends StatelessWidget {
  const SignupDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      // backgroundColor: ,
      body: Padding(
        padding: const EdgeInsets.all(paddingHuge),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.35,
                height: size.height * 0.5,
                // color: Colors.blue,
                child: Image.asset('assets/images/illustration_dashboard.png'),
              ),
              SizedBox(width: size.width * 0.1),
              Container(
                width: 400,
                // height: 500,
                child: const SignupForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

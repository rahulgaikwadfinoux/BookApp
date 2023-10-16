import 'package:bookapp/constants/route_constatnts.dart';
import 'package:bookapp/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController passwController = TextEditingController(text: "");

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          ),
          const SizedBox(height: 80),
          Text("Sign up to BookApp",
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 16),
          Row(
            children: [
              Text("Already have account? ", style: textTheme.labelLarge),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, login_route);
                },
                child: Text("Log in to Account ",
                    style: textTheme.bodyMedium!
                        .copyWith(color: theme.colorScheme.primary)),
              ),
            ],
          ),
          const SizedBox(height: 32),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 32),
          TextField(
            controller: passwController,
            obscureText: true,
            decoration: const InputDecoration(
              // hintText: 'Xyz@gmail.com',
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 32),
          // ignore: sized_box_for_whitespace
          Container(
            height: 55,
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, app_route);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radiusHuge))),
              child: Text(
                "Sign up",
                style: textTheme.displaySmall,
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Divider(),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.facebook),
            ],
          ),
          // const SizedBox(height: 16),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/src/components/appbar/loginAppbar/login_appbar.dart';
import 'package:netflix_clone/src/components/login/grid_view_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              AppBarLogin(),
              GridViewLogin(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/login_form.dart';

class Login_view extends StatefulWidget {
  const Login_view({super.key});

  @override
  State<Login_view> createState() => _Login_viewState();
}

class _Login_viewState extends State<Login_view> {
  @override
  Widget build(BuildContext context) {
    return Login_Form();
  }
}

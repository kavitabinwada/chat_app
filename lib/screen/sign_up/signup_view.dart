
import 'package:flutter/material.dart';

import 'components/signup_form.dart';

class Signup_view extends StatefulWidget {
  const Signup_view({super.key});

  @override
  State<Signup_view> createState() => _Signup_viewState();
}

class _Signup_viewState extends State<Signup_view> {
  @override
  Widget build(BuildContext context) {
    return Signup_Form();
  }
}

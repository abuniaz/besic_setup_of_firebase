import 'dart:ffi';

import 'package:basic_firebase/Services/global_variables.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 20));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.linear);
        ..addListener((){ });
        ..addStatusListener((){})

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: 50,
          ),
          CachedNetworkImage(
            imageUrl: loginUrlImages,
            placeholder: (context, url) => Image.asset(
              'images/photo2.jpeg',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

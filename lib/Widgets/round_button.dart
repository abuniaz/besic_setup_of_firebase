import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool loading;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: loading
                ? const CircularProgressIndicator(
                    strokeWidth: 1,
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
          ),
        ),
      ),
    );
  }
}

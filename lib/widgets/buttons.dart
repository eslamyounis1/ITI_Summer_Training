import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home/home_screen.dart';
import 'navigation.dart';

class defaultButton extends StatefulWidget {
  late String label;
   void Function() onPressed;
  bool isUpper = false;
  var formKey = GlobalKey<FormState>();

  defaultButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.isUpper,
    required this.formKey,
  }) : super(key: key);

  @override
  State<defaultButton> createState() => _defaultButtonState();
}

class _defaultButtonState extends State<defaultButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.50),
            offset: const Offset(0.0, 1.0),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: MaterialButton(
        onPressed:  widget.onPressed,
        child: Text(
          widget.isUpper ? widget.label.toUpperCase() : widget.label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

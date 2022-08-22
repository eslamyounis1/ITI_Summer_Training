import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  String label;
  bool isUpper = false;
  void Function()? onTap;
  MyButton({Key? key, required this.label, required this.onTap,required this.isUpper}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 350,
        height: 50,
        decoration:  BoxDecoration(
            color: Colors.blue[500],
            borderRadius: const BorderRadius.all(
              Radius.circular(30.0),
            )),
        child: Center(
            child: Text(
             widget.isUpper ? widget.label.toUpperCase() : widget.label,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}

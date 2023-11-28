import 'package:flutter/material.dart';
import '../constants.dart';

class BottomContainer extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const BottomContainer({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Container(
        decoration:const BoxDecoration(
          color: calulateBtnColor,

          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        width: double.infinity,
        height: calulateBtn,

        padding: const EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            text,
            style: bottomBtnStyling,
          ),
        ),
      ),
    );
  }
}

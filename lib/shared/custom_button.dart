import 'package:avanta/shared/colors.dart';
import 'package:flutter/material.dart';

enum CustomButtonVariant { elevated, outline }

class CustomButton extends StatefulWidget {
  final double? width;
  final double? height;
  final Color backgroundColor;
  final String text;
  final CustomButtonVariant variant;
  final void Function() onTap;

  const CustomButton(
      {required this.text,
      required this.onTap,
      this.variant = CustomButtonVariant.elevated,
      this.width,
      this.height = 49,
      this.backgroundColor = const Color(0xff15104D),
      super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width ?? double.infinity,
        height: widget.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: widget.variant == CustomButtonVariant.elevated
              ? null
              : Border.all(color: widget.backgroundColor),
          color: widget.variant == CustomButtonVariant.elevated
              ? widget.backgroundColor
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: widget.variant == CustomButtonVariant.elevated
                    ? Colors.white
                    : CustomColors.primary900,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

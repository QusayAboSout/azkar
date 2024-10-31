import 'package:flutter/material.dart';

// Custom Button Class with Image Background
class LargeButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double width;
  final double height;
  final String? imageUrl; // New parameter for background image
  final Function()? onTap;

  const LargeButton({
    required this.text,
    this.color,
    this.width = 200,
    this.height = 50,
    this.imageUrl, // Background image is optional
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: Colors
            .transparent, // Ensures the InkWell ripple effect works properly
        child: InkWell(
          onTap: onTap,
          child: Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl as String),
                fit: BoxFit.cover,
              ),
            ),
            width: width,
            height: height,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize:22,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

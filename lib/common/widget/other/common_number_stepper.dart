import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sub_project/core/constant/app_colors.dart';
import 'package:sub_project/core/constant/app_text_style.dart';

class CommonNumberStepper extends StatelessWidget implements PreferredSizeWidget {
  final int currentStep;
  final int totalStep;
  final Color? iconBackgroundColor;
  final Color lineColor;

  const  CommonNumberStepper({
    super.key,
    this.currentStep = 0,
    this.iconBackgroundColor = Colors.grey,
    this.lineColor = Colors.white,
    required this.totalStep,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Color getLineColor(int step) {
    return step <= currentStep ? AppColors.primaryColor : AppColors.iconColorNeutral;
  }

  Color getGgColor(int step) {
    return step <= currentStep ? AppColors.primaryColor : AppColors.grey;
  }

  Color getTextColor(int step) {
    return step <= currentStep ? AppColors.white : AppColors.white;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> options = [];
    for (int index = 0; index < totalStep; index++) {
      options.add(_buildCircleIcon(onPressed: () {}, getTextColor(index), getGgColor(index), step: index));
      if(index < totalStep -1) options.add(_buildLine(getLineColor(index)));
    }
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [AppColors.shadowColor],
      ),
      child: Row(children: options),
    );
  }

  Widget _buildCircleIcon( Color? textColor, Color? backgroundColor,{void Function()? onPressed, required int step}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Center(
            child: Text("$step", style: AppTextStyle.title4(color: textColor))),
      ),
    );
  }

  Widget _buildLine(Color lineColor) {
    return Expanded(
      child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomPaint(
              size: const Size(double.infinity, 2), // Width of line
              painter: DottedLinePainter(lineColor),
            ),
          )
      ),
    );
  }
}


class DottedLinePainter extends CustomPainter {
  final Color lineColor;
  DottedLinePainter(this.lineColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    double dashWidth = 3, dashSpace = 20, startX = 0;
    final double endX = size.width;

    while (startX < endX) {
      // Draw the dash
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace; // Update position for next dash
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
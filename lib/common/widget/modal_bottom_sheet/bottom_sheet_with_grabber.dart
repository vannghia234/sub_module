import 'package:flutter/material.dart';

import '../../../core/constant/dimens.dart';

class CommonBottomSheet extends StatefulWidget {
  final Widget Function(BuildContext context, ScrollController scrollController)
      bodyBuilder;
  final Widget? grabberBottom;
  final double initialChildSize, maxChildSize, minChildSize, dragSensitivity;

  const CommonBottomSheet({
    super.key,
    required this.bodyBuilder,
    required this.initialChildSize,
    required this.maxChildSize,
    required this.minChildSize,
    this.dragSensitivity = 600,
    this.grabberBottom,
  });

  @override
  State<CommonBottomSheet> createState() => _CommonBottomSheetState();
}

class _CommonBottomSheetState extends State<CommonBottomSheet> {
  late double _sheetPosition;
  late double _dragSensitivity;
  @override
  void initState() {
    super.initState();
    _sheetPosition = widget.initialChildSize;
    _dragSensitivity = widget.dragSensitivity;
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: _sheetPosition,
      maxChildSize: widget.maxChildSize,
      minChildSize: widget.minChildSize,
      builder: (context, scrollController) {
        return Column(
          children: [
            GestureDetector(
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _sheetPosition -= details.delta.dy / _dragSensitivity;
                  if (_sheetPosition < widget.minChildSize) {
                    _sheetPosition = widget.minChildSize;
                  }
                  if (_sheetPosition > widget.maxChildSize) {
                    _sheetPosition = widget.maxChildSize;
                  }
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(DiMens.twentyFour),
                  topRight: Radius.circular(DiMens.twentyFour),
                ),
                child: Column(
                  children: [
                    _buildSheetGrabber(),
                    if (widget.grabberBottom != null) widget.grabberBottom!,
                  ],
                ),
              ),
            ),
            Expanded(
              child: widget.bodyBuilder(context, scrollController),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSheetGrabber() {
    return ColoredBox(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 4,
            width: 50,
            margin: EdgeInsets.symmetric(vertical: DiMens.sixTeen),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}

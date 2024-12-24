import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/constant_export.dart';

class CommonExpandedTileWidget extends StatefulWidget {
  final List<Widget> children;
  final Widget title, trailing;
  final EdgeInsets padding, childrenPadding;
  final bool isIntialExpanded;
  final CrossAxisAlignment expandedCrossAxisAlignment;
  const CommonExpandedTileWidget({
    super.key,
    required this.children,
    required this.title,
    this.isIntialExpanded = false,
    this.padding = EdgeInsets.zero,
    this.childrenPadding = EdgeInsets.zero,
    this.trailing = const SizedBox(),
    this.expandedCrossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  State<CommonExpandedTileWidget> createState() =>
      _CommonExpandedTileWidgetState();
}

class _CommonExpandedTileWidgetState extends State<CommonExpandedTileWidget> {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isIntialExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: widget.isIntialExpanded,
      visualDensity: VisualDensity.compact,
      childrenPadding: widget.childrenPadding,
      tilePadding: widget.padding,
      title: widget.title,
      leading: AnimatedRotation(
        duration: const Duration(milliseconds: 300),
        turns: _isExpanded ? 0.25 : 0.0,
        child: const Icon(
          CupertinoIcons.chevron_right,
          color: AppColors.black,
        ),
      ),
      expandedCrossAxisAlignment: widget.expandedCrossAxisAlignment,
      backgroundColor: Colors.white,
      onExpansionChanged: (value) {
        setState(() {
          _isExpanded = value;
        });
      },
      trailing: widget.trailing,
      shape: const ContinuousRectangleBorder(side: BorderSide.none),
      children: widget.children,
    );
  }
}

import 'package:flutter/material.dart';

class DecoraitedActionContainer extends StatelessWidget {
  const DecoraitedActionContainer({
    super.key,
    double? radius,
    EdgeInsetsGeometry? padding,
    Widget? child,
  })  : _radius = radius ?? 24.0,
        _child = child,
        _padding = padding ??
            const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4.0,
            );

  final double _radius;
  final EdgeInsetsGeometry _padding;
  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            _radius,
          ),
        ),
        border: Border.all(
          color: Colors.black,
        ),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF322D50),
            Color(0xFF322D50),
            Color(0xFF47416C),
            Color(0xFF47416C),
          ],
          stops: [
            0.0,
            0.5,
            0.5,
            1.0,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: _child,
    );
  }
}

import 'package:flutter/material.dart';

class CustomElevation extends StatelessWidget {
  final Widget child;

  CustomElevation({@required this.child}) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 15,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: this.child,
    );
  }
}

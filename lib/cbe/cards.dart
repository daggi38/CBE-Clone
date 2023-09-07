import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  final child;
  final child2;
  const Transfer({Key? key, required this.child, required this.child2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: child),
            Center(
              child: child2,
            )
          ],
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 25,
            offset: Offset(10, 10),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 25,
            offset: Offset(-5, -5),
          )
        ], color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        height: 120,
        width: 150,
      ),
    );
  }
}
